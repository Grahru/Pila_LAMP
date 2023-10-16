#!/bin/bash
set -x 
#Muestra comandos

#Declaramos Variables
#----------------------------------------------------------
PHPMYADMIN_APP_PASSWORD=4393
APP_USER=agr
APP_PASSWORD=4393
#----------------------------------------------------------
#Actualizar repo
apt update
#Actualizar paquetes
#apt upgrade -y

#Instalar phpmyadmin de forma automatizada
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2" | debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $PHPMYADMIN_APP_PASSWORD" | debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $PHPMYADMIN_APP_PASSWORD" | debconf-set-selections

sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y

#Creamos usuario
mysql -u root <<<"CREATE USER '$APP_USER'@'%' IDENTIFIED BY '$APP_PASSWORD';"
mysql -u root <<<"GRANT ALL PRIVILEGES ON *.* TO '$APP_USER'@'%';"
sudo apt install goaccess -y
