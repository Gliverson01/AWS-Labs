# Criar um servidor de banco de dados e interagir com o banco de dados usando um aplicativo

Neste laboratório, você aprenderá a configurar e operar uma instância de banco de dados gerenciada pela AWS com o Amazon RDS. Além disso, configurará um aplicativo web para interagir com esse banco de dados.

## Objetivos do Laboratório

Ao final deste laboratório, você será capaz de:
- Executar uma instância de banco de dados do Amazon RDS com alta disponibilidade.
- Configurar a instância de banco de dados para permitir conexões do seu servidor web.
- Abrir um aplicativo web e interagir com seu banco de dados.

## Estrutura

- `setup_rds_instance.sh`: Script de configuração para criar uma instância de banco de dados do Amazon RDS.
- `rds_security_group_setup.md`: Instruções para criar e configurar grupos de segurança para a instância de banco de dados.
- `rds_subnet_group_setup.md`: Instruções para configurar um grupo de sub-redes para o RDS.
- `rds_instance_setup.md`: Instruções para criar e configurar a instância de banco de dados RDS.
- `interact_with_db.md`: Instruções para interagir com o banco de dados usando um aplicativo web.
- `images/`: Contém imagens e diagramas para ajudar na visualização da arquitetura.

## Como Executar

Siga as etapas detalhadas nos arquivos `.md` abaixo na ordem indicada para realizar o laboratório completo:

1. **Leia e siga as instruções em** `rds_security_group_setup.md` **para configurar o grupo de segurança da instância RDS.**
2. **Em seguida, configure o grupo de sub-redes conforme descrito em** `rds_subnet_group_setup.md`.
3. **Depois, siga as instruções em** `rds_instance_setup.md` **para criar e configurar a instância de banco de dados RDS.**
4. **Finalmente, use as instruções em** `interact_with_db.md` **para configurar e interagir com o banco de dados via aplicativo web.**

O script `setup_rds_instance.sh` pode ser executado diretamente para configurar a instância de banco de dados do RDS.
