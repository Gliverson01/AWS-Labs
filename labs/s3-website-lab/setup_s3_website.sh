#!/bin/bash

# Nome do bucket (substitua pelo nome do seu bucket)
BUCKET_NAME=<your-bucket-name>

# Criar o bucket S3
aws s3api create-bucket --bucket $BUCKET_NAME --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2

# Configurar o bucket como site estático
aws s3 website s3://$BUCKET_NAME/ --index-document index.html

# Fazer upload dos arquivos para o S3
aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ s3://$BUCKET_NAME/ --recursive --acl public-read

# Exibir URL do site
echo "Site hospedado com sucesso. Acesse: http://$BUCKET_NAME.s3-website-us-west-2.amazonaws.com"
