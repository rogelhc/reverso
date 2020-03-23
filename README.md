# Setup instância Reverso Elotech

## Configurações:
Arquivos de configuração do serviço em roles/traefik/templates/

## Chave Privada:

```bash
$ export ANSIBLE_PRIVATE_KEY_FILE=~/pkeys/elotech-infra 
```

## Comando para execução do Playbook:

Verificar alterações e exibir diferenças
```bash
$ ansible-playbook -i production pb_traefik.yml --check --diff
```
Realizar alterações
```bash
$ ansible-playbook -i production pb_traefik.yml 
```


## TODO

 * Zabbix Agent as Code.
 * Migrar regras do arquivo para variáveis