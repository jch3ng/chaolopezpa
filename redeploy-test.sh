#!/bin/bash

# terraform
cd terraform
source .envrc 
terraform destroy -auto-approve 

ssh-keygen -R test.chaolopezpa.com
terraform apply -auto-approve

# ansible
cd ../ansible
source .envrc
ansible-playbook -i ./inventory/test ./playbooks/deploy.yml
