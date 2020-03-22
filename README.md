# Setup instância Reverso Elotech

## Configurações:
Arquivos de configuração do serviço em roles/traefik/templates/

## Chave Privada:

```bash
$ export ANSIBLE_PRIVATE_KEY_FILE=~/pkeys/elotech-infra 
```

## Comando para execução do Playbook:
```bash
$ ansible-playbook -i production pb_traefik.yml 
```


## TODO

 * Zabbix Agent as Code.
 * Template de regras traefik via variáveis.