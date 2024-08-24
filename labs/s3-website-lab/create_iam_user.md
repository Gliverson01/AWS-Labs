# Tarefa 4. Criar um usuário do IAM que tenha acesso total ao Amazon S3

O comando da AWS CLI: `aws iam create-user` cria um usuário do IAM para a conta da AWS. A opção `--user-name` é usada para criar o nome do usuário e deve ser exclusivo na conta.

Usando a AWS CLI, crie um usuário do IAM com o comando `aws iam create-user` e o nome de usuário `awsS3user`:

```bash
aws iam create-user --user-name awsS3user
```

Para conceder ao usuário `awsS3user` acesso total ao bucket do S3, execute o comando a seguir:

```bash
aws iam attach-user-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --user-name awsS3user
```
