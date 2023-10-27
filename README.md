# Instalacion pila LAMP
LAMP es el acrónimo usado para describir un sistema de infraestructura de Internet que usa las siguientes herramientas:

- Linux (Sistema Operativo)
- Apache (Servidor Web)
- MySQL/MariaDB (Sistema Gestor de Bases de Datos)
- PHP (Lenguaje de programación)

Gracias a aws tenemos una maquina ubuntu en la que trabajar por lo que la parte de linux ya esta cubierta. Por eso estaremos trabajando en consola de linux.

## Instalacion apache2
Siempre que vayamos a instalar algo
apt update
#Actualizar paquetes
###
apt upgrade -y

#Instalar apache
###
apt install apache2 -y

###
systemctl start apache2
###
systemctl stop apache2
###
systemctl restart apache2
###
systemctl reload apache2
###
systemctl status apache2

#Instalar MySQL
sudo apt install mysql-server -y

#Instalar php
sudo apt install php libapache2-mod-php php-mysql -y

#Copiar archivo de conf
cp ../conf/000-default.conf /etc/apache2/sites-available

systemctl restart apache2
#Copiar index
cp ../php/index.php /var/www/html
#Modificar  propietario de /var/www/html al de apache
chown -R www-data:www-data /var/www/html

