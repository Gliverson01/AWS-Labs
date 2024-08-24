# Criar um site no S3

Este laboratório demonstra como utilizar o Amazon S3 para hospedar um site estático e como usar a AWS CLI para criar e gerenciar o bucket, bem como configurar permissões e fazer upload de arquivos.

## Objetivos do Laboratório

Ao final deste laboratório, você será capaz de:
- Criar um bucket no Amazon S3 usando a AWS CLI.
- Criar um usuário do IAM com permissões para acessar o S3.
- Configurar permissões para o bucket S3.
- Fazer upload de arquivos e configurar o site estático.
- Criar um script em lote para atualizar o site automaticamente.

## Estrutura

- `setup_s3_website.sh`: Script para criar o bucket S3, configurar permissões e fazer upload dos arquivos do site.
- `create_bucket.md`: Instruções para criar um bucket no Amazon S3.
- `create_iam_user.md`: Instruções para criar um usuário do IAM com acesso ao S3.
- `upload_files_s3.md`: Instruções para fazer upload dos arquivos do site para o S3.
- `configure_permissions.md`: Instruções para configurar permissões no bucket S3.
- `update_website_script.md`: Instruções para criar um script de atualização do site.
- `challenge.md`: Desafio opcional para otimizar o script usando o comando `sync`.
- `images/`: Contém imagens e diagramas relacionados ao lab.

## Como Executar

Siga as etapas detalhadas nos arquivos `.md` abaixo na ordem indicada para realizar o laboratório completo:

1. **Leia e siga as instruções em** `create_bucket.md` **para criar o bucket no S3.**
2. **Em seguida, siga as instruções em** `create_iam_user.md` **para criar um usuário do IAM com acesso ao S3.**
3. **Depois, siga as instruções em** `upload_files_s3.md` **para fazer upload dos arquivos do site para o S3.**
4. **Siga as instruções em** `configure_permissions.md` **para ajustar as permissões no bucket.**
5. **Finalmente, use as instruções em** `update_website_script.md` **para criar um script de atualização automática do site.**

O script `setup_s3_website.sh` pode ser executado diretamente para configurar o bucket e fazer o upload dos arquivos do site.
