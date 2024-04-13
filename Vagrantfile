Vagrant.configure("2") do |config|
  config.env.enable

  config.vm.define ENV['HOSTNAME'] do |vps|
    vps.vm.box = "debian/buster64"
    vps.vm.hostname = ENV['HOSTNAME']

    vps.vm.network "public_network", bridge: "enp6s0", ip: ENV['IP']

    vps.vm.provider "virtualbox" do |vb|
      vb.memory = ENV['RAM']
      vb.cpus = ENV['CPUS'].to_i
    end

    vps.vm.provision "ansible" do |ansible|
      ansible.playbook = "setup-vps.yml"
    end
  end
end
