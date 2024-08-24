#!/bin/bash
# Script para configurar a política de senha do IAM

# Configura a política de senha do IAM para uma conta AWS
aws iam update-account-password-policy \
    --minimum-password-length 10 \
    --require-symbols \
    --require-numbers \
    --require-uppercase-characters \
    --require-lowercase-characters \
    --allow-users-to-change-password \
    --expire-passwords \
    --password-reuse-prevention 5

echo "Política de senha do IAM configurada com sucesso!"
