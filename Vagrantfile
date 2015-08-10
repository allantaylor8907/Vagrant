# -*- mode: ruby -*-
# vi: set ft=ruby :
#^syntax detection

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"
   
  config.vm.define "consul1" do |consul1|
	config.vm.provision "shell", path: "provision.sh"
    consul1.vm.hostname = "consul-server"
	consul1.vm.network "private_network", ip: "172.20.20.10"
  end
end
