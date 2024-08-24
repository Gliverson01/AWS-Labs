#!/bin/bash

# Criar a estrutura de diretórios
mkdir -p intro-iam/images

# Criar arquivos com conteúdo inicial
# README.md dentro do lab 'intro-iam'
cat <<EOL > intro-iam/README.md
# Introdução ao AWS Identity and Access Management (IAM)

Neste laboratório, você aprenderá a criar e gerenciar usuários, grupos e políticas no serviço AWS Identity and Access Management (IAM). Isso inclui a aplicação de uma política de senhas, a exploração de grupos de usuários e a aplicação de permissões.

## Objetivos do Laboratório

Ao final deste laboratório, você será capaz de:
- Criar e aplicar uma política de senhas do IAM.
- Explorar os usuários e grupos de usuários pré-criados do IAM.
- Inspecionar as políticas do IAM aplicadas aos grupos de usuários pré-criados.
- Adicionar usuários a grupos com capacidades específicas ativas.
- Localizar e usar o URL de login do IAM.
- Testar os efeitos das políticas sobre o acesso ao serviço.

## Estrutura

- \`setup_iam_policy.sh\`: Script de configuração para criar uma política de senha do IAM.
- \`iam_user_and_group_setup.md\`: Instruções para explorar e configurar usuários e grupos de usuários do IAM.
- \`iam_login_and_policy_test.md\`: Instruções para testar o login de usuários e as políticas aplicadas.
- \`images/\`: Contém imagens e diagramas para ajudar na visualização do ambiente.

## Como Executar

Siga as etapas detalhadas nos arquivos \`.md\` abaixo na ordem indicada para realizar o laboratório completo:

1. **Leia e siga as instruções em** \`setup_iam_policy.sh\` **para configurar a política de senha do IAM.**
2. **Em seguida, explore e configure usuários e grupos conforme descrito em** \`iam_user_and_group_setup.md\`.
3. **Por fim, teste as políticas e o login de usuários seguindo as instruções em** \`iam_login_and_policy_test.md\`.

O script \`setup_iam_policy.sh\` pode ser executado diretamente para configurar a política de senha do IAM.
EOL

# Script de configuração IAM Policy
cat <<EOL > intro-iam/setup_iam_policy.sh
#!/bin/bash
# Script para configurar a política de senha do IAM

# Configura a política de senha do IAM para uma conta AWS
aws iam update-account-password-policy \\
    --minimum-password-length 10 \\
    --require-symbols \\
    --require-numbers \\
    --require-uppercase-characters \\
    --require-lowercase-characters \\
    --allow-users-to-change-password \\
    --expire-passwords \\
    --password-reuse-prevention 5

echo "Política de senha do IAM configurada com sucesso!"
EOL

# Instruções para configurar usuários e grupos do IAM
cat <<EOL > intro-iam/iam_user_and_group_setup.md
# Configuração de Usuários e Grupos do IAM

## Passos para Configurar Usuários e Grupos

1. No AWS Management Console, vá para **IAM**.
2. Explore os usuários pré-criados e os grupos de usuários existentes.
3. Adicione usuários aos grupos conforme necessário para suas funções.
4. Inspecione as políticas associadas aos grupos de usuários para entender as permissões concedidas.

## Detalhes dos Grupos

- **EC2-Admin**: Administradores do EC2, com permissão para gerenciar instâncias.
- **EC2-Support**: Suporte ao EC2, com permissão de leitura.
- **S3-Support**: Suporte ao S3, com permissão de leitura.

EOL

# Instruções para testar login e políticas
cat <<EOL > intro-iam/iam_login_and_policy_test.md
# Teste de Login e Políticas do IAM

## Passos para Testar o Login e as Políticas

1. Acesse o URL de login do IAM fornecido no Console do IAM.
2. Faça login como cada usuário configurado (user-1, user-2, user-3) e teste as permissões concedidas.
3. Verifique se cada usuário pode acessar apenas os serviços para os quais foi concedida permissão.
4. Documente os resultados dos testes para garantir que as políticas estejam configuradas corretamente.

## Detalhes para Testar

- **user-1**: Deve acessar somente o S3.
- **user-2**: Deve acessar o EC2 em modo leitura.
- **user-3**: Deve ter permissões administrativas no EC2.

EOL

echo "Estrutura de pastas e arquivos criada com sucesso!"
