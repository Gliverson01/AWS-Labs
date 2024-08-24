# Crie a sua VPC e inicie um servidor web

Este laboratório demonstra como criar uma VPC personalizada, configurar sub-redes, grupos de segurança e, finalmente, iniciar uma instância do Amazon EC2 dentro dessa VPC. A instância será configurada para atuar como um servidor web.

## Objetivos do Laboratório

Ao final deste laboratório, você será capaz de:
- Criar uma VPC (Virtual Private Cloud).
- Criar sub-redes públicas e privadas.
- Configurar grupos de segurança para controlar o tráfego de rede.
- Iniciar uma instância do EC2 dentro da nova VPC.
- Configurar e iniciar um servidor web na instância EC2.

## Estrutura

- `setup_vpc_and_ec2.sh`: Script de configuração para criar a VPC, sub-redes e iniciar a instância EC2 com o servidor web.
- `vpc_configuration.md`: Detalhes sobre a configuração da VPC e sub-redes.
- `security_group_configuration.md`: Instruções para configurar os grupos de segurança.
- `ec2_instance_setup.md`: Instruções para iniciar e configurar a instância EC2.
- `images/`: Contém imagens como diagramas de arquitetura.

## Como Executar

Siga as etapas detalhadas nos arquivos `.md` abaixo na ordem indicada para realizar o laboratório completo:

1. **Leia e siga as instruções em** `vpc_configuration.md` **para criar a VPC e as sub-redes.**
2. **Em seguida, configure os grupos de segurança conforme descrito em** `security_group_configuration.md`.
3. **Após configurar a VPC e os grupos de segurança, siga as instruções em** `ec2_instance_setup.md` **para iniciar e configurar a instância EC2.**
4. **Finalmente, você pode executar o script** `setup_vpc_and_ec2.sh` **para automatizar a configuração do servidor web na instância EC2.**

O script `setup_vpc_and_ec2.sh` pode ser executado diretamente na instância EC2 para configurar o servidor web.
