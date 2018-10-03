#!/bin/sh

# step 1 variable
ansible-playbook variable.yaml

# step 2 condition
ansible-playbook condition.yaml

# step 3 loop
ansible-playbook loop.yaml -i inventory.ini

# step 4 until
ansible-playbook until.yaml

# step 5 blocks
ansible-playbook blocks.yaml

# step 6 template
ansible-playbook template.yaml -i inventory.ini

# step 6 cleanup
rm blocks.retry
rm until.retry
