# Tarefa 3. Criar um bucket do S3 usando a AWS CLI

O comando `s3api` cria um bucket do S3 com as credenciais da AWS neste laboratório. Por padrão, o bucket do S3 é criado na Região us-west-2.

Para criar um bucket no Amazon S3, você deve usar o comando `aws s3api create-bucket`. Ao usar esse comando para criar um bucket do S3, também é necessário incluir o seguinte:
- Especifique `--region us-west-2`.
- Adicione `--create-bucket-configuration LocationConstraint=us-west-2` ao final do comando.

Este é um exemplo do comando para criar um bucket do S3:

```bash
aws s3api create-bucket --bucket <nome-do-seu-bucket> --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2
```
