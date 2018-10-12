# -*- mode: ruby -*-
# vi: set ft=ruby :
unless Vagrant.has_plugin?('vagrant-hostmanager')
  warn "[\e[1m\e[31mERROR\e[0m]: Please run: vagrant plugin install vagrant-hostmanager"
  exit -1
end

Vagrant.configure("2") do |config|
  # Enable hostmanager
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.vm.provision :hostmanager

  # The following line terminates all ssh connections. Therefore Vagrant will be forced to reconnect.
  # That's a workaround to have the docker command in the PATH and add Vagrant to the docker group by logging in/out
  config.vm.provision :logout, type: :shell, run: :always do |shell|
    shell.inline = "ps aux | grep 'sshd:' | awk '{print end $2}' | xargs kill"
  end

  config.vm.provision :hello, type: :shell, run: :always do |shell|
    shell.inline = "echo Hello, from $(hostname)!"
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "256"]
    vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all", "--groups", "/Ansible demo"]
  end

  config.vm.synced_folder '.', '/vagrant', disabled: true

  # Create Node Servers
  (1..3).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.box = "ubuntu/trusty64"
      node.vm.hostname = "node#{i}"
      node.vm.network :private_network, ip: "10.10.10.10#{i}"
      node.vm.network "forwarded_port", guest: 80, host: "808#{i}"

      node.vm.provider :virtualbox do |vb|
        vb.name = "Node #{i}"
      end
    end
  end

  # Create Ansible Management Instance
  config.vm.define :ansible, primary: true do |ansible|
    ansible.vm.box = "ubuntu/trusty64"
    ansible.vm.hostname = "ansible"
    ansible.vm.network :private_network, ip: "10.10.10.10"

    ansible.vm.synced_folder '.', '/demo'

    ansible.vm.provider :virtualbox do |vb|
      vb.name = "Ansible host"
    end
    ansible.vm.provision :hello, type: :shell, run: :always do |shell|
      shell.inline = <<-SHELL
          sudo gem install yaml-lint
          sudo apt-get -y install tree git zsh
      SHELL
    end
    ansible.vm.provision :ohmyzsh, type: :shell, run: :always do |shell|
      shell.privileged = false
      shell.inline = <<-SHELL
        git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
        cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
      SHELL

    end
    ansible.vm.provision :chsh, type: :shell, run: :always do |shell|
      shell.inline = "chsh -s /bin/zsh vagrant"
    end
  end
end