#!/bin/bash

# Install Ansible from official ppa using apt
sudo apt update
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

ansible-galaxy install naftulikay.rust-dev
ansible-playbook -K -i inventory.yml playbook.yml

