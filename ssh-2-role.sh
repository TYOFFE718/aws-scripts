#!/bin/bash

#include in user-data

alias api="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem ec2-user@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=dev-app-php-api-node --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
alias worker="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem ec2-user@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=dev-app-php-worker-node --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
alias node="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem ec2-user@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=dev-audiomack-js-node --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
alias rabbit="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem ec2-user@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=rabbitmq --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
alias sphinx="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem ec2-user@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=sphinx --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
alias scylla="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem centos@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=scylla --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
alias redis="ssh -i /home/ec2-user/keys/dev-ec2-instances.pem ec2-user@$(aws ec2 describe-instances --region us-east-1 --filter Name=tag:Name,Values=redis --query "Reservations[*].Instances[*].PrivateIpAddress" --output text)"
echo -e "Instance ssh aliases for DEV"
echo -e "$(alias | grep dev-ec2 | awk -F"=" '{print $1}' | sed 's/alias//g')"
