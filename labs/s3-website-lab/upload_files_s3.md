# Tarefa 7. Fazer upload de arquivos para o Amazon S3 usando a AWS CLI

Depois de extrair os arquivos, você deve fazer upload do conteúdo do arquivo para o Amazon S3.

Para fazer upload dos arquivos para o bucket, substitua `<nome-do-seu-bucket>` no comando a seguir pelo nome do seu bucket e execute o comando ajustado.

```bash
aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ s3://<nome-do-seu-bucket>/ --recursive --acl public-read
```

Este comando faz o upload dos arquivos e configura as permissões para leitura pública.
