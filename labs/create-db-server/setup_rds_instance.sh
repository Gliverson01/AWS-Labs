#!/bin/bash
# Script para configurar a instância de banco de dados do RDS

# Passo 1: Criar a instância do RDS
aws rds create-db-instance \
    --db-instance-identifier lab-db \
    --db-instance-class db.t3.medium \
    --engine mysql \
    --master-username main \
    --master-user-password lab-password \
    --allocated-storage 20 \
    --vpc-security-group-ids <SECURITY_GROUP_ID> \
    --db-subnet-group-name <DB_SUBNET_GROUP_NAME> \
    --multi-az \
    --backup-retention-period 0

echo "Instância de banco de dados RDS configurada com sucesso!"
