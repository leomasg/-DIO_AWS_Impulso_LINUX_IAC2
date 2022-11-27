#!/bin/bash

echo "....................Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "....................Instalando apache"
apt-get install apache2 -y
echo "....................Start apache"
systemctl start apache2
echo "....................Instalando ZIP..."
apt-get install unzip -y
echo "....................Paste tmp..."
cd /tmp
echo "....................Baixando aplicacao web..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "....................Descompactando main.zip..."
unzip main.zip
cd linux-site-dio-main 
echo "....................Copiando o aplicativo para a pasta /var/www/html/..."
cp -R -v * /var/www/html/
