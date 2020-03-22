# Setup instância Reverso Elotech


## Chave Privada:

```bash
$ export ANSIBLE_PRIVATE_KEY_FILE=~/pkeys/elotech-infra 
```

## Comando:
```bash
$ ansible-playbook -i production pb_traefik.yml 
```


## TODO

 Zabbix Agent as Code