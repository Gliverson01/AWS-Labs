# Instalar a AWS CLI na Instância do Linux Red Hat

## Passos para Instalar a AWS CLI

1. Baixe o instalador da AWS CLI:

```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```

2. Descompacte o instalador:

```
unzip -u awscliv2.zip
```

3. Instale a AWS CLI:

```
sudo ./aws/install
```

4. Verifique a instalação:

```
aws --version
```

Agora, a AWS CLI está instalada e pronta para ser configurada.
