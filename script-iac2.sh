#!/bin/bash


echo "atualizando servidor"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixando e copiando app web"

cd /home/ubuntu/projeto2Dio
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
