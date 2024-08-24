# Usar o Armazenamento de Parâmetros para Gerenciar Configurações

## Passos para Criar e Usar Parâmetros

1. No Console de Gerenciamento da AWS, acesse o "Systems Manager".
2. No painel de navegação à esquerda, em Gerenciamento de aplicações, selecione "Armazenamento de parâmetros".
3. Selecione "Criar parâmetro" e forneça os seguintes detalhes:
   - Nome: `/dashboard/show-beta-features`
   - Descrição: `Display beta features`
   - Valor: `True`
4. Selecione "Criar parâmetro".

Agora, o parâmetro estará disponível para ser utilizado na aplicação que está sendo executada na instância EC2.
