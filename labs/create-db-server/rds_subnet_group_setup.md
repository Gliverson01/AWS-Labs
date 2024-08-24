# Configuração do Grupo de Sub-redes para a Instância RDS

## Passos para Configurar o Grupo de Sub-redes

1. No AWS Management Console, vá para **RDS** > **Subnet Groups**.
2. Crie um novo grupo de sub-redes chamado "DB Subnet Group".
3. Adicione sub-redes em duas Zonas de Disponibilidade, por exemplo, 10.0.1.0/24 e 10.0.3.0/24.
4. Salve o grupo de sub-redes.

Esse grupo de sub-redes será utilizado ao criar a instância do RDS na próxima tarefa.
