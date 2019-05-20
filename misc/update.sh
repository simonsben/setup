#!/bin/bash

# Update records
sudo apt update

# Update
sudo apt -y upgrade

# Log update time
echo "Update" $(date) >> update.log
