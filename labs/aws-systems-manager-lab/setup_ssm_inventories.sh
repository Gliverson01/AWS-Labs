#!/bin/bash
# Script para configurar inventário e executar comandos no Systems Manager

# Passo 1: Configurar inventário no Systems Manager
aws ssm create-association     --name "Inventory-Association"     --targets "Key=instanceIds,Values=i-0abcd1234efgh5678"     --association-name "Inventory-Association"     --output text

# Passo 2: Executar comando para instalar aplicação personalizada
aws ssm send-command     --document-name "AWS-RunShellScript"     --targets "Key=instanceIds,Values=i-0abcd1234efgh5678"     --parameters commands='sudo yum install -y httpd && sudo systemctl start httpd'     --output text
