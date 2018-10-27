#!/bin/sh

# step 1 run playbook
ansible-playbook playbook.yml

# step 2 run init role
ansible-galaxy init show-message
tree

# step 3 run create task

# step 4 run add default variable
ansible-playbook playbook.yml

# step 5 run add role to playbook
ansible-playbook playbook.yml

# step 6 run add params
ansible-playbook playbook.yml

# step 7 run use as task with params
ansible-playbook playbook.yml

# step 8 cleanup
rm -rf roles/show-message