# -*- mode: ruby -*-
# vi: set ft=ruby :
#^syntax detection

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"
   
  config.vm.define "consul1" do |consul1|
	config.vm.provision "shell", path: "consul1/provision.sh"
    consul1.vm.hostname = "consul1"
	consul1.vm.network "private_network", ip: "172.20.20.10"
  end
  
  config.vm.define "consul2" do |consul2|
	config.vm.provision "shell", path: "consul2/provision.sh"
    consul2.vm.hostname = "consul2"
	consul2.vm.network "private_network", ip: "172.20.20.20"
  end
  
  config.vm.define "consul3" do |consul3|
	config.vm.provision "shell", path: "consul3/provision.sh"
    consul3.vm.hostname = "consul3"
	consul3.vm.network "private_network", ip: "172.20.20.30"
  end
end
