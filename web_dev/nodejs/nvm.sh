#!/bin/bash

# install for nvm
# https://github.com/creationix/nvm

# Check for curl
command -v curl >/dev/null 2>&1 || {
    echo "Curl not installed, installing now.";
    sudo apt install curl;
}

# Install nvm 
# NOTE: this install link is from 2018.08.28 (check if current)
echo "Installing nvm...";
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash;

# Allows nvm to be called
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

# Get latest version of node
echo "Installing latest version of node"
nvm install node

# Set latest version of node as default
echo "Switching to latest version of node"
nvm use node