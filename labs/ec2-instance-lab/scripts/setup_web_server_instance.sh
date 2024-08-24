#!/bin/bash

# Nome da instância
INSTANCE_NAME="WebServer"

# ID da AMI para Amazon Linux 2
AMI_ID="ami-0abcdef1234567890" # Substitua pelo ID real da AMI

# Tipo de instância
INSTANCE_TYPE="t3.micro"

# ID da Subnet
SUBNET_ID="subnet-0abcdef1234567890" # Substitua pelo ID real da Subnet

# ID do Security Group
SECURITY_GROUP_ID="sg-0abcdef1234567890" # Substitua pelo ID real do Security Group

# Script de dados do usuário para instalar o Apache
USER_DATA_SCRIPT='#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Bem-vindo ao servidor web!</h1>" > /var/www/html/index.html
'

# Criar a instância do servidor web
aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --subnet-id $SUBNET_ID \
    --security-group-ids $SECURITY_GROUP_ID \
    --user-data "$USER_DATA_SCRIPT" \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
    --query "Instances[0].InstanceId" \
    --output text
