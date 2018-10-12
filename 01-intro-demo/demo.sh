#!/bin/sh

# step 1 install ansible
sudo apt-get -y install ansible

# step 2 check version
ansible --version

# step 3 install latest version
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# step 4 check version
ansible --version

# step 5 ping localhost
ansible localhost -m ping

# step 6 check available commands
#ansible \tab
#compgen -ac | grep ansible
