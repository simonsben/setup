#!/bin/bash

# Uninstall docker
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update package lists
sudo apt update

# Install packages to allow HTTPS package
sudo apt install apt-transport-https ca-certificates \
		 curl gnupg2 software-properties-common

# Add docker library
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add stable repository to list of libraries
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update list of libraries to pull docker lib
sudo apt update

# Install docker
sudo apt install docker-ce

# Test installation
sudo docker run hello-world
