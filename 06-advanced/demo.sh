#!/bin/sh

# step 1 configure
ansible-playbook configure.yaml

# step 2 tags
ansible-playbook tags.yaml
ansible-playbook tags.yaml --tags all
ansible-playbook tags.yaml --tags debug