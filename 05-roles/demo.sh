#!/bin/sh

# step 1 run playbook
ansible-playbook playbook.yml

# step 2 run init role
cd roles
ansible-galaxy init show-message
tree

# step 3 run use role
ansible-playbook playbook.yml

# step 4 cleanup
rm -rf roles/show-message

