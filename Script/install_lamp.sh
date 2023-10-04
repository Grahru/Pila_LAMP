#!/bin/bash
set -x 
#Muestra comandos
echo "Esto es una prueba"
#Actualizar repo
#apt update
#Actualizar paquetes
#apt upgrade -y

#Instalar apache
apt install apache2 -y

#systemctl start apache2
#systemctl stop apache2
#systemctl restart apache2
#systemctl reload apache2
#systemctl status apache2

sudo apt install mysql-server -y
