#!/bin/bash

# Nome da instância
INSTANCE_NAME="BastionHost"

# ID da AMI para Amazon Linux 2
AMI_ID="ami-0abcdef1234567890" # Substitua pelo ID real da AMI

# Tipo de instância
INSTANCE_TYPE="t3.micro"

# ID da Subnet
SUBNET_ID="subnet-0abcdef1234567890" # Substitua pelo ID real da Subnet

# ID do Security Group
SECURITY_GROUP_ID="sg-0abcdef1234567890" # Substitua pelo ID real do Security Group

# Criar a instância Bastion
aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --subnet-id $SUBNET_ID \
    --security-group-ids $SECURITY_GROUP_ID \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
    --query "Instances[0].InstanceId" \
    --output text
