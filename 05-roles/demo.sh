#!/bin/sh

# step 1 run playbook
ansible-playbook playbook.yml

# step 2 run init role
cd roles
ansible-galaxy init show-message
tree

# step 3 run use role
ansible-playbook playbook.yml

# step 4 add 3rd party role
ansible-galaxy search apache --author=kbrebanov 

# step 5 add 3rd party role
ansible-galaxy install kbrebanov.java -c

# step 6 run use role
ansible-playbook -i inventory.ini playbook.yml

# step 7 cleanup
rm -rf roles/show-message
