#!/bin/sh

# step 1 run playbook
ansible-playbook playbook.yml

# step 2 encrypt vars
ansible-vault encrypt vars.yaml

# step 3 encrypt vars
ansible-vault edit vars.yaml

# step 4 run playbook
ansible-playbook playbook.yaml --ask-vault-pass

# step 5 encrypt vars
ansible-vault encrypt_string 'sicret data from variable' --name SECRET1

# step 6 replace SICRET1 and run playbook
ansible-playbook playbook.yaml --ask-vault-pass

# step 7 add no_log:true to task and run playbook
ansible-playbook playbook.yaml --ask-vault-pass

# step 8 encrypt vars
ansible-vault decrypt vars.yaml

