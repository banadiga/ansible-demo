#!/bin/sh

# step 1 show inventory output 
./inventory.py --list

# step 2 show tree 
ansible-inventory -i inventory.py --graph

# step 3 host variables
ansible-inventory -i inventory.py --host=node1

# step 4 ping all hosts
ansible nodes -i inventory.py -m ping

# step 5 variable
ansible-playbook 01-variable.yaml

# step 6 condition
ansible-playbook 02-condition.yaml

# step 7 loop
ansible-playbook 03-loop.yaml -i inventory.ini

# step 8 until
ansible-playbook 04-until.yaml

# step 9 blocks
ansible-playbook 05-blocks.yaml

# step 10 template
ansible-playbook 06-template.yaml -i inventory.ini

# step 11 cleanup
rm 04-until.retry
rm 05-blocks.retry
rm 06-template.retry

