#!/bin/bash

# Update package cache
sudo apt update;

# Install required packages
sudo apt install nginx ufw -y;

# Configure firewall
sudo ufw default deny incoming;
sudo ufw default allow outgoing;
sudo ufw allow 3306/tcp comment "MySQL Db Server";
sudo ufw allow 8080/tcp comment "Dart API Server";
sudo ufw allow 80/tcp comment "Flutter Web App";
sudo ufw allow 443/tcp comment "Flutter Web App Secure";
sudo ufw allow 22/tcp comment "SSH"; 

# Configure nginx
sudo service nginx stop;
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak;
sudo mv config/nginx.conf /etc/nginx/nginx.conf;
sudo mv config/conf.d/* /etc/nginx/conf.d/;
