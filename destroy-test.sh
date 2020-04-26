#!/bin/bash

cd terraform
source .envrc 
terraform destroy -auto-approve 

ssh-keygen -R test.chaolopezpa.com
