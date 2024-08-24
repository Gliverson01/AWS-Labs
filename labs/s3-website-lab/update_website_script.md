# Tarefa 8: Criar um arquivo em lote para tornar a atualização do site repetível

Para criar uma implantação repetível, você criará um arquivo em lote usando o editor VI.

Na janela do terminal, para extrair o histórico de comandos recentes, execute o seguinte comando:

```bash
history
```

Localize a linha na qual você executou o comando `aws s3 cp`. Você colocará essa linha no novo arquivo em lote.

Para criar o script de atualização do site:

```bash
cd ~
touch update-website.sh
vi update-website.sh
```

No editor VI, adicione o seguinte conteúdo:

```bash
#!/bin/bash
aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ s3://<nome-do-seu-bucket>/ --recursive --acl public-read
```

Salve e saia do editor VI. Transforme o arquivo em executável:

```bash
chmod +x update-website.sh
```
