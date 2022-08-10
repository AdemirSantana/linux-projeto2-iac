#!/usr/bin/env bash

echo "Atualizando servidor ..."
apt update
apt upgrade -y

echo "Preparando ambiente ..."
apt install apache2 -y
apt install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim ..."
