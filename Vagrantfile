Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  
  config.vm.define "manager01" do |manager|
    manager.vm.hostname = "manager01"
    manager.vm.network "private_network", ip: "192.168.56.10"
    manager.vm.synced_folder "./src", "/home/vagrant/app"
    
    manager.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
    
    manager.vm.provision "shell", path: "scripts/install-docker.sh"
    manager.vm.provision "shell", path: "scripts/init-swarm-manager.sh"
  end
  
  config.vm.define "worker01" do |worker|
    worker.vm.hostname = "worker01"
    worker.vm.network "private_network", ip: "192.168.56.11"
    
    worker.vm.provider "virtualbox" do |vb|
      vb.memory = "1536"
      vb.cpus = 1
    end
    
    worker.vm.provision "shell", path: "scripts/install-docker.sh"
    worker.vm.provision "shell", path: "scripts/join-swarm-worker.sh"
  end
  
  config.vm.define "worker02" do |worker|
    worker.vm.hostname = "worker02"
    worker.vm.network "private_network", ip: "192.168.56.12"
    
    worker.vm.provider "virtualbox" do |vb|
      vb.memory = "1536"
      vb.cpus = 1
    end
    
    worker.vm.provision "shell", path: "scripts/install-docker.sh"
    worker.vm.provision "shell", path: "scripts/join-swarm-worker.sh"
  end
end
