# Conectar à Instância EC2 do Red Hat usando SSH

## Passos para Usuários Windows

1. Baixe o arquivo labsuser.ppk e o endereço IP público da instância EC2.
2. Use o PuTTY para se conectar à instância EC2 usando o arquivo PPK.

## Passos para Usuários macOS/Linux

1. Baixe o arquivo labsuser.pem e o endereço IP público da instância EC2.
2. Use o comando SSH no terminal para se conectar à instância EC2:

```
ssh -i labsuser.pem ec2-user@<ip-address>
```

Substitua `<ip-address>` pelo endereço IP público da instância.
