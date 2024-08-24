# Configuração do Grupo de Segurança para a Instância RDS

## Passos para Configurar o Grupo de Segurança

1. No AWS Management Console, vá para **VPC** > **Security Groups**.
2. Crie um novo grupo de segurança chamado "DB Security Group".
3. Adicione uma regra de entrada para permitir tráfego na porta 3306 (MySQL/Aurora) do "Web Security Group".
4. Salve o grupo de segurança.

Esse grupo será utilizado ao criar a instância do RDS na próxima tarefa.
