#!/bin/sh

# step 1 ssh to node
ssh node2

# step 2 run playbook
ansible-playbook -i inventory.ini set-up-ssh.yml --ask-pas

# step 3 retry playbook
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.ini set-up-ssh.yml --ask-pas --limit @/demo/02-set-up-ssh-connection/set-up-ssh.retry

# step 4 Check ssh connection
ssh node3

# step 5 run playbook
ansible-playbook -i inventory.ini set-up-ssh.yml

# step 6 cleanup
rm set-up-ssh.retry
