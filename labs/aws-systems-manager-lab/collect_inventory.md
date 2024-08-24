# Gerar Listas de Inventário para Instâncias Gerenciadas

## Passos para Configurar o Inventário

1. No Console de Gerenciamento da AWS, pesquise por "Systems Manager" e selecione-o.
2. No painel de navegação à esquerda, em Gerenciamento de nós, selecione "Fleet Manager".
3. Selecione "Configurar inventário" e forneça os seguintes detalhes:
   - Nome: `Inventory-Association`
   - Destinos: Selecione instâncias manualmente e escolha a instância gerenciada.
4. Selecione "Configurar inventário" para iniciar a coleta de inventário.

Agora, o Systems Manager coletará automaticamente o inventário das instâncias selecionadas.
