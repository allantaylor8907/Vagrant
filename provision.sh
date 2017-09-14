#!/bin/bash

# Step 1 - Get the necessary utilities and install them.
sudo apt-get update
sudo apt-get install -y unzip curl wget
sudo apt-get update
#sudo apt-get dist-upgrade -y

# Step 2 - Copy the upstart script to the /etc/init folder.
cp /vagrant/consul.conf /etc/init/consul.conf

# Step 3 - Get the Consul Zip file and extract it.  
cd /usr/local/bin
wget --no-check-certificate https://releases.hashicorp.com/consul/0.9.3/consul_0.9.3_linux_amd64.zip
unzip *.zip
rm *.zip

# Step 4 - Make the Consul directory.
mkdir -p /etc/consul.d
mkdir /var/consul

# Step 5 - Copy the server configuration.
cp $1 /etc/consul.d/config.json

# Step 6 - Start Consul
exec consul agent -config-file=/etc/consul.d/config.json
