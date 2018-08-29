#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "ERROR: must be run as root (use sudo before command)"
  exit
fi

echo "Installing node"
sudo apt install nodejs

echo "Installing npm"
sudo apt install npm