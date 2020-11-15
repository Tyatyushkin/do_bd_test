#!/bin/bash

# create mv in terraform
cd terraform && terraform init && terraform apply --auto-approve

# make inventory
do-ansible-inventory --group-by-tag --out ../ansible/inventory

# start ansible playbook
 cd ../ansible && ansible-playbook playbooks/hdps.yml

