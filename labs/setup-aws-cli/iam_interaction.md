# Interagir com o IAM usando a AWS CLI

## Passos para Observar Detalhes de Configuração do IAM

1. Verifique a configuração do IAM na instância do EC2:

```
aws iam list-users
```

2. Para um desafio adicional, use a AWS CLI para baixar a política `lab_policy` em formato JSON:

```
aws iam get-policy-version --policy-arn arn:aws:iam::123456789012:policy/lab_policy --version-id v1 > lab_policy.json
```

Esse comando salva a política em um arquivo chamado `lab_policy.json`.
