# Detalhes da Instância EC2

## Passos para Iniciar a Instância

1. No AWS Management Console, vá para **EC2**.
2. Clique em **Launch Instance**.
3. Selecione a **Amazon Linux 2 AMI**.
4. Escolha o tipo de instância **t3.micro**.
5. Configure a VPC e a Subnet.
6. Habilite a **Proteção contra Encerramento Acidental**.
7. Insira o script de dados do usuário no campo apropriado.
8. Adicione armazenamento conforme necessário.
9. Adicione tags para identificar a instância.
10. Configure o grupo de segurança para permitir tráfego HTTP (Porta 80).
11. Inicie a instância.

## Verificações Pós-Inicialização

- Verifique se a instância está em estado `running`.
- Confirme que as verificações de status estão `2/2`.
