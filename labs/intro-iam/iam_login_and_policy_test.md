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

