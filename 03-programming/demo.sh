#!/bin/sh

# step 1 variable
ansible-playbook 01-variable.yaml

# step 2 condition
ansible-playbook 02-condition.yaml

# step 3 loop
ansible-playbook 03-loop.yaml -i inventory.ini

# step 4 until
ansible-playbook 04-until.yaml

# step 5 blocks
ansible-playbook 05-blocks.yaml

# step 6 template
ansible-playbook 06-template.yaml -i inventory.ini

# step 6 cleanup
rm 04-until.retry
rm 05-blocks.retry
