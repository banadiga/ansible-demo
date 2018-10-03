#!/bin/sh

# step 1 install ansible tower
vagrant init ansible/tower
vagrant up --provider virtualbox
vagrant ssh

# or use existing Vagrantfile
vagrant up --provider virtualbox
vagrant ssh