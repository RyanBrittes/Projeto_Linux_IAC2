#!/bin/bash

echo "--------------------------------------"

echo "Iniciando o IAC de Servidor WEB...."

echo "Atualizacao do servidor"
apt-get update

apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y

echo "Instalando Unzip"
apt-get install unzip -y

echo "Baixando arquivos e copiando para o Apache"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html

echo "Finalizando.........."

echo "-------------------------------------------------------------------------------------"
