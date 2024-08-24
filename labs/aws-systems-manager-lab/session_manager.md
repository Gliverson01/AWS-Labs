# Usar o Session Manager para Acessar Instâncias

## Passos para Acessar uma Instância

1. No Console de Gerenciamento da AWS, acesse o "Systems Manager".
2. No painel de navegação à esquerda, em Gerenciamento de nós, selecione "Session Manager".
3. Selecione "Iniciar sessão" e escolha a instância gerenciada.
4. Uma nova sessão será aberta no navegador, permitindo que você execute comandos na instância.

Por exemplo, para listar os arquivos instalados na instância, use:

```
ls /var/www/html
```

O Session Manager oferece uma maneira segura e auditável de acessar instâncias sem a necessidade de SSH.
