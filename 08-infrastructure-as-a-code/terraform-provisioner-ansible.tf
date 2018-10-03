provisioner "ansible" {
    plays {
        playbook = "./provision.yml"
        hosts = ["${self.public_ip}"]
    }
    become = "yes"
    local = "yes"
}