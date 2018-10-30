#!/bin/sh

# step 1 configure
ansible-playbook 01-advanced.yaml

ansible-playbook 02-pre-post-tasks.yaml

ansible-playbook 03-tags.yaml --list-tags

ansible-playbook 03-tags.yaml --tags=job
