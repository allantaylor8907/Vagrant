#!/bin/bash

# Step 1 - Get the necessary utilities and install them.
apt-get update
apt-get install -y unzip

# Step 2 - Get the Consul Zip file and extract it.  
cd /usr/local/bin
wget https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip
unzip *.zip
rm *.zip

# Step 3 - Make the Consul directory.
mkdir -p /etc/consul.d
mkdir /var/consul

# Step 4 - Copy the server configuration (this is a bootstrap configuration).
cp /vagrant/consul1/config.json /etc/consul.d/config.json

# Step 5 - Start Consul
consul agent -config-file=/etc/consul.d/config.json
