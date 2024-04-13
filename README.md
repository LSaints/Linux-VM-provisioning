# Linux-VM-provisioning
Este repositório contém scripts e configurações para provisionar uma máquina virtual para desenvolvimento local usando Vagrant.
## Descrição

Este projeto usa o Vagrant, uma ferramenta de automação de infraestrutura que permite definir e provisionar máquinas virtuais de forma programática. Com o Vagrant, você pode definir as configurações da máquina virtual em um arquivo chamado `Vagrantfile`, e o Vagrant cuidará do restante, desde a criação da máquina virtual até a configuração das dependências necessárias.

## Recursos

- **Provisionamento Automatizado**: O arquivo `Vagrantfile` neste repositório contém as configurações necessárias para criar e provisionar uma máquina virtual com virtualbox e com um playbook com Ansible onde voçê nao precisa instalar depencias de forma manual.
  
- **Facilidade de Uso**: Com o Vagrant, você pode iniciar uma máquina virtual com apenas um comando, simplificando o processo de configuração do ambiente de desenvolvimento.

- **Reprodutibilidade**: Ao definir a configuração da máquina virtual como código, você garante que todos os membros da equipe tenham ambientes de desenvolvimento consistentes e replicáveis.

## Como Usar

1. Clone este repositório para o seu ambiente de desenvolvimento local:
   git clone https://github.com/LSaints/Linux-VM-provisioning
2. Navegue até o diretório do repositório:
3. Altere o arquivo .env.example para .env
4. Adicione a suas proprias variáveis de ambiente
5. Inicie a máquina virtual usando:
   sudo sh install-and-init.sh
6. Acesse a máquina virtual via SSH:
   sudo vagrant ssh

Agora você está dentro da máquina virtual e pode começar a trabalhar no seu projeto.
 
