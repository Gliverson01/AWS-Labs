#!/bin/bash
# Script para instalar e configurar a AWS CLI

# Passo 1: Baixar a AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Passo 2: Descompactar o arquivo
unzip -u awscliv2.zip

# Passo 3: Instalar a AWS CLI
sudo ./aws/install

# Verificar a instalação
aws --version
