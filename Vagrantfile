Vagrant.configure("2") do |config|
    config.vm.define "nome-da-vm" do |srv|
        srv.vm.box = "ubuntu/bionic64"
        srv.vm.network "public_network", bridge: "enp8s0", auto_config: false
        srv.vm.hostname = "nome-da-vm"

        srv.vm.provision "shell", inline: <<-SHELL
        # Atualiza a lista de pacotes e instala dependências básicas
        sudo apt-get update
        sudo apt-get install -y git

         # Instala o Docker e Docker Compose
        sudo apt-get install -y docker.io docker-compose
        sudo usermod -aG docker vagrant
    SHELL
    end
end