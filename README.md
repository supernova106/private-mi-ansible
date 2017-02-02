##Description
Using Ansible to bootstrap microservices
- build AMIs for baseami, worker, controller, master, traefik 
- configuration management tool for microservice
- update & deploy the stack

##Usage
- Add private ssk key to ~/.ssh/ 
- run boostrap.sh script
- set `pipelining=True` in `/etc/ansible/ansible.cfg`
- run `./security-setup`
- run `packer validate packer/mi-base.json`
- run `packer build packer/mi-base.json`

## Debug
- run `packer build -debug packer/mi-base.json`
- update `/etc/ansible/hosts` inventory

```
[test]
10.0.1.152	ansible_user=ubuntu	ansible_ssh_private_key_file=~/.ssh/id_rsa
```

- update `mi-base.yml` to execute ansible-playbook remotely 
- run `ansible-playbook mi-base.yml --limit "test" -vvv`

##Useful references
- https://github.com/ansible/ansible-examples
- https://galaxy.ansible.com/intro
