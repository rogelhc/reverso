.DEFAULT_GOAL := help

help: ## Display this help

	@echo " Choose a command run in "$(PROJECTNAME)":"
	@awk -F ':|##' '/^[^\t].+?:.*?##/ {\
        printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF \
        }' $(MAKEFILE_LIST)


ansible.ping: ## Ansible ping host (Test connectivity)
	@ansible all -m ping -i production
ansible.check:	## Ansible Playbook check with diff
	@ansible-playbook -i production pb_traefik.yml --diff --check

ansible.run: ## Ansible Playbook Run and apply
	@ansible-playbook -i production pb_traefik.yml