#!/bin/bash

# Set up web stack
apt-get install apache2;
apt-get install php5 libapache2-mod-php5 php5-mcrypt;
chmod 777 /var/www/html;

# Set up firewall
ufw allow ssh;
ufw allow http;
ufw enable;
