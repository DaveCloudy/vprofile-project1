#!/bin/bash

# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install -y apache2 git

# Download website files from tooplate.com
cd /var/www/html
sudo git clone https://github.com/tooplate/website-template.git .

# Set permissions for the web server
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Enable Apache mod_rewrite
sudo a2enmod rewrite
sudo systemctl restart apache2

# Print completion message
echo "Website setup from tooplate.com completed."