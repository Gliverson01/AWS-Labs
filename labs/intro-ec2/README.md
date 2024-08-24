# Introdução ao Amazon EC2

Este laboratório demonstra como iniciar, gerenciar e monitorar uma instância do Amazon EC2. Você aprenderá a criar uma instância, configurar grupos de segurança, redimensionar a instância e monitorar o seu desempenho.

## Objetivos do Laboratório

Ao final deste laboratório, você será capaz de:
- Iniciar uma instância EC2 e proteger contra encerramento acidental.
- Configurar um servidor web simples usando dados do usuário.
- Monitorar a instância EC2 utilizando o Amazon CloudWatch.
- Modificar o grupo de segurança para permitir tráfego HTTP.
- Redimensionar a instância e o volume de EBS.
- Explorar os limites de uso do Amazon EC2.
- Encerrar a instância com segurança.

## Estrutura

- `setup_ec2_instance.sh`: Script de configuração para iniciar uma instância EC2 e configurar um servidor web.
- `ec2_instance_details.md`: Detalhes sobre a configuração da instância.
- `security_group_rules.md`: Instruções para configurar as regras do grupo de segurança.
- `resize_instance_and_volume.md`: Instruções para redimensionar a instância e o volume.
- `images/`: Contém imagens como diagramas de arquitetura.

## Como Executar

Siga as etapas detalhadas nos arquivos `.md` abaixo na ordem indicada para realizar o laboratório completo:

1. **Leia e siga as instruções em** `ec2_instance_details.md` **para iniciar e configurar a instância EC2.**
2. **Em seguida, configure as regras do grupo de segurança conforme descrito em** `security_group_rules.md`.
3. **Após configurar a instância e as regras de segurança, você pode executar o script** `setup_ec2_instance.sh` **para configurar o servidor web.**
4. **Finalmente, se necessário, siga as instruções em** `resize_instance_and_volume.md` **para redimensionar a instância e o volume de armazenamento.**

O script `setup_ec2_instance.sh` pode ser executado diretamente na instância EC2 para configurar o servidor web.
