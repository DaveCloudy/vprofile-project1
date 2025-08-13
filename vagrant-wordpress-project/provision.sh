#!/bin/bash

# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql wget unzip

# Download and set up WordPress
wget -c http://wordpress.org/latest.zip
unzip latest.zip
sudo mv wordpress /var/www/html/

# Set permissions
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 755 /var/www/html/wordpress

# Create a MySQL database for WordPress
sudo mysql -e "CREATE DATABASE wordpress;"
sudo mysql -e "CREATE USER 'wp_user'@'localhost' IDENTIFIED BY 'password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'localhost';"
sudo mysql -e "FLUSH PRIVILEGES;"

# Configure Apache to serve WordPress
echo "<VirtualHost *:80>
    DocumentRoot /var/www/html/wordpress
    <Directory /var/www/html/wordpress>
        AllowOverride All
    </Directory>
</VirtualHost>" | sudo tee /etc/apache2/sites-available/wordpress.conf

# Enable the new site and rewrite module
sudo a2ensite wordpress.conf
sudo a2enmod rewrite
sudo systemctl restart apache2

# Print completion message
echo "WordPress installation completed. Access it at http://192.168.59.11"