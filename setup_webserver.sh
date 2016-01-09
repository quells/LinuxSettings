#!/bin/bash

# Set up web stack
apt-get install apache2;
apt-get install php5 libapache2-mod-php5 php5-mcrypt;

# Set up firewall
ufw allow ssh;
ufw allow http;
ufw enable;

# Add symbolic link to web root to regular user
if [ -n $USERNAME ]
then
	ln -s /var/www/html /home/$USERNAME/www;
	chmod 777 /var/www/html;
fi
