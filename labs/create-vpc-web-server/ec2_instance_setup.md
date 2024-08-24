# Configuração da Instância EC2

## Passos para Iniciar a Instância EC2

1. No AWS Management Console, vá para **EC2**.
2. Clique em **Launch Instance** e configure as opções, como a AMI, tipo de instância, etc.
3. Associe a instância à sub-rede pública e ao grupo de segurança criado anteriormente.
4. Configure o servidor web utilizando os comandos necessários.

## Verificações Pós-Inicialização

- Verifique se a instância está em estado `running`.
- Confirme que as verificações de status estão `2/2`.
