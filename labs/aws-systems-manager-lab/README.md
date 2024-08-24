# Usar o AWS Systems Manager

Este laboratório demonstra como utilizar o AWS Systems Manager para gerenciar instâncias do Amazon EC2 e outros recursos na AWS em grande escala. Você aprenderá a usar o Systems Manager para verificar configurações, executar tarefas em servidores, atualizar configurações de aplicações e acessar a linha de comando em uma instância.

## Objetivos do Laboratório

Ao final deste laboratório, você será capaz de:
- Verificar configurações e permissões.
- Executar tarefas em vários servidores.
- Atualizar as configurações da aplicação.
- Acessar a linha de comando em uma instância usando o Session Manager.

## Estrutura

- `setup_ssm_inventories.sh`: Script para configurar inventário e executar comandos no Systems Manager.
- `collect_inventory.md`: Instruções para gerar listas de inventário para instâncias gerenciadas.
- `install_application.md`: Instruções para instalar uma aplicação personalizada usando o Systems Manager.
- `parameter_store.md`: Instruções para usar o armazenamento de parâmetros para gerenciar configurações da aplicação.
- `session_manager.md`: Instruções para acessar instâncias usando o Session Manager.
- `images/`: Contém imagens e diagramas para ajudar na visualização da arquitetura.

## Como Executar

Siga as etapas detalhadas nos arquivos `.md` abaixo na ordem indicada para realizar o laboratório completo:

1. **Leia e siga as instruções em** `collect_inventory.md` **para configurar o inventário das instâncias gerenciadas.**
2. **Em seguida, siga as instruções em** `install_application.md` **para instalar uma aplicação personalizada.**
3. **Depois, siga as instruções em** `parameter_store.md` **para gerenciar configurações usando o armazenamento de parâmetros.**
4. **Finalmente, use as instruções em** `session_manager.md` **para acessar instâncias usando o Session Manager.**

O script `setup_ssm_inventories.sh` pode ser executado diretamente para configurar o inventário e executar comandos no Systems Manager.
