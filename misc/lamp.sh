# Script to install LAMP for ubuntu
#!/bin/bash

# Install apache
sudo apt install apache2

# Install mysql
sudo apt install mysql-server

# Install php
sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php

# Restart apache server
sudo service apache2 restart

# Check localhost (apache)
ping -c 5 localhost

# Check php install 
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

echo "Installation complete!"
