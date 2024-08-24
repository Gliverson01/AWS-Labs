#!/bin/bash
# Script para configurar um servidor web na instância EC2

# Instala o Apache Web Server
sudo yum -y install httpd

# Configura o Apache para iniciar automaticamente na inicialização
sudo systemctl enable httpd

# Inicia o servidor Apache
sudo systemctl start httpd

# Cria uma página HTML simples
echo '<html><h1>Hello From Your Web Server!</h1></html>' | sudo tee /var/www/html/index.html

echo "Configuração completa! Acesse a instância via IP público para ver a página web."
