#!/bin/bash

# Instalar o Ansible
sudo apt update
sudo apt install -y ansible

# Instalar o Vagrant
wget https://releases.hashicorp.com/vagrant/2.2.18/vagrant_2.2.18_x86_64.deb
sudo dpkg -i vagrant_2.2.18_x86_64.deb
rm vagrant_2.2.18_x86_64.deb

# Instalar o plugin Vagrant Env
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-env

# Iniciar a máquina virtual
sudo vagrant up
