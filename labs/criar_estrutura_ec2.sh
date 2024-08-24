#!/bin/bash

# Diretório base onde a estrutura será criada
BASE_DIR="/home/gli/AWS-Labs/labs"

# Nome do subdiretório para o novo laboratório
LAB_DIR="ec2-instance-lab"

# Função para criar a estrutura do projeto
create_structure() {
  # Criando o diretório do laboratório
  mkdir -p $BASE_DIR/$LAB_DIR
  
  # Criando o diretório scripts
  mkdir -p $BASE_DIR/$LAB_DIR/scripts
  
  # Criando o diretório images
  mkdir -p $BASE_DIR/$LAB_DIR/images
  
  # Criando o setup_bastion_instance.sh com conteúdo
  cat <<EOL > $BASE_DIR/$LAB_DIR/scripts/setup_bastion_instance.sh
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
aws ec2 run-instances \\
    --image-id \$AMI_ID \\
    --instance-type \$INSTANCE_TYPE \\
    --subnet-id \$SUBNET_ID \\
    --security-group-ids \$SECURITY_GROUP_ID \\
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=\$INSTANCE_NAME}]" \\
    --query "Instances[0].InstanceId" \\
    --output text
EOL

  # Tornando o script executável
  chmod +x $BASE_DIR/$LAB_DIR/scripts/setup_bastion_instance.sh

  # Criando o setup_web_server_instance.sh com conteúdo
  cat <<EOL > $BASE_DIR/$LAB_DIR/scripts/setup_web_server_instance.sh
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
aws ec2 run-instances \\
    --image-id \$AMI_ID \\
    --instance-type \$INSTANCE_TYPE \\
    --subnet-id \$SUBNET_ID \\
    --security-group-ids \$SECURITY_GROUP_ID \\
    --user-data "\$USER_DATA_SCRIPT" \\
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=\$INSTANCE_NAME}]" \\
    --query "Instances[0].InstanceId" \\
    --output text
EOL

  # Tornando o script executável
  chmod +x $BASE_DIR/$LAB_DIR/scripts/setup_web_server_instance.sh

  # Criando o README.md com conteúdo padrão simplificado
  cat <<EOL > $BASE_DIR/$LAB_DIR/README.md
# Criação de instâncias do Amazon EC2

## Visão Geral

Neste laboratório, você aprenderá a iniciar e configurar instâncias do Amazon EC2, incluindo o uso de um host bastion e a configuração de um servidor web via AWS CLI.

## Scripts

- **setup_bastion_instance.sh**: Script para configurar e iniciar a instância do host bastion.
- **setup_web_server_instance.sh**: Script para configurar e iniciar a instância do servidor web.

## Como Executar

1. **setup_bastion_instance.sh**: Utilize este script para iniciar e configurar o host bastion.
2. **setup_web_server_instance.sh**: Utilize este script para iniciar e configurar o servidor web.

## Imagens

Coloque capturas de tela ou diagramas relacionados ao laboratório na pasta **images/**.

## Conclusão

Este laboratório guia você através das etapas de criação e configuração de instâncias EC2, utilizando tanto o Console de Gerenciamento da AWS quanto a AWS CLI.

EOL

  echo "Estrutura do projeto criada com sucesso em $BASE_DIR/$LAB_DIR"
}

# Executando a função
create_structure
