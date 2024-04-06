Vagrant.configure("2") do |config|
    config.vm.define "srv-bank" do |srv|
        srv.vm.box = "ubuntu/focal64"
        srv.vm.network "public_network", bridge: "enp6s0"
        srv.vm.hostname = "srv-bank"

        srv.vm.provision "shell", inline: <<-SHELL

        # Cria um usuário e define uma senha
        sudo useradd -m -s /bin/bash default
        echo "default:123" | sudo chpasswd
        sudo usermod -aG sudo default

        # Atualização dos pacotes e instalação do Docker
        sudo apt-get update
        sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
        curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
        sudo apt-get update
        sudo apt-get install -y docker-ce docker-ce-cli containerd.io

         # Instala o Docker e Docker Compose
        sudo apt-get install -y docker.io docker-compose
        sudo usermod -aG docker vagrant
        
        # Instalação do Portainer
        sudo ufw allow 9000
        sudo docker volume create portainer_data
        sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data --restart always --name portainer portainer/portainer
    SHELL
    end
end