# -*- mode: ruby -*-
# vi: set ft=ruby :
#^syntax detection

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_download_insecure = true

  config.vm.define "consul1" do |consul1|
	config.vm.provision "shell" do |s|
		s.path = "provision.sh"
		s.args   = ["/vagrant/consul1/config.json"]
	end
    consul1.vm.hostname = "consul1"
	consul1.vm.network "private_network", ip: "172.20.20.10"
  end
  
  config.vm.define "consul2" do |consul2|
	config.vm.provision "shell" do |s|
		s.path = "provision.sh"
		s.args   = ["/vagrant/consul2/config.json"]
	end
    consul2.vm.hostname = "consul2"
	consul2.vm.network "private_network", ip: "172.20.20.20"
  end
  
  config.vm.define "consul3" do |consul3|
	config.vm.provision "shell" do |s|
		s.path = "provision.sh"
		s.args   = ["/vagrant/consul3/config.json"]
	end
    consul3.vm.hostname = "consul3"
	consul3.vm.network "private_network", ip: "172.20.20.30"
  end
  
  config.vm.define "consulclient" do |client|
	config.vm.provision "shell" do |s|
		s.path = "provisionclient.sh"
		s.args   = ["/vagrant/consulclient/config.json"]
	end
    client.vm.hostname = "consulclient"
	client.vm.network "private_network", ip: "172.20.20.40"
  end

  config.vm.define "consul4" do |consul4|
	config.vm.provision "shell" do |s|
		s.path = "provision.sh"
		s.args   = ["/vagrant/consul4/config.json"]
	end
    consul4.vm.hostname = "consul4"
	consul4.vm.network "private_network", ip: "172.20.20.50"
  end

  config.vm.define "consul5" do |consul5|
	config.vm.provision "shell" do |s|
		s.path = "provision.sh"
		s.args   = ["/vagrant/consul5/config.json"]
	end
    consul5.vm.hostname = "consul5"
	consul5.vm.network "private_network", ip: "172.20.20.60"
  end

  config.vm.define "consul6" do |consul6|
	config.vm.provision "shell" do |s|
		s.path = "provision.sh"
		s.args   = ["/vagrant/consul6/config.json"]
	end
    consul6.vm.hostname = "consul6"
	consul6.vm.network "private_network", ip: "172.20.20.70"
  end

  config.vm.define "consulclient2" do |client2|
	config.vm.provision "shell" do |s|
		s.path = "provisionclient.sh"
		s.args   = ["/vagrant/consulclient2/config.json"]
	end
    client2.vm.hostname = "consulclient2"
	client2.vm.network "private_network", ip: "172.20.20.80"
  end
end

