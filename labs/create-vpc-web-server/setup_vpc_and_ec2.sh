#!/bin/bash
# Script para configurar a VPC, sub-redes, grupos de segurança e iniciar uma instância EC2

# Passos para criar a VPC, sub-redes, e instância EC2

# Passo 1: Criar a VPC e as sub-redes
aws ec2 create-vpc --cidr-block 10.0.0.0/16 --output json
# Adicione mais comandos para criar sub-redes, tabelas de rota, etc.

# Passo 2: Criar um grupo de segurança
aws ec2 create-security-group --group-name WebSecurityGroup --description "Enable HTTP access" --vpc-id <VPC_ID>
# Adicione regras de segurança, etc.

# Passo 3: Iniciar a instância EC2
aws ec2 run-instances --image-id ami-12345678 --count 1 --instance-type t3.micro --key-name MyKeyPair --security-group-ids <SECURITY_GROUP_ID> --subnet-id <SUBNET_ID>
# Adicione mais comandos para configurar a instância, etc.

echo "Configuração completa! Acesse a instância via IP público para ver a página web."
