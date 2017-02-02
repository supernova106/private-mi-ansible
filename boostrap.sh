#!/bin/bash
apt-get install -y software-properties-common wget unzip
apt-add-repository ppa:ansible/ansible
apt-get update -y
apt-get install -y ansible

wget https://releases.hashicorp.com/packer/0.10.1/packer_0.10.1_linux_amd64.zip
unzip packer_0.10.1_linux_amd64.zip && mv packer /usr/bin/packer && rm packer_0.10.1_linux_amd64.zip
