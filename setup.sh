#!/bin/bash

# Update packages
aptitude update;
aptitude upgrade;
apt-get update;
apt-get upgrade;

# Set up root
echo 'Setting Root Password';
passwd;
echo 'source ~/.bash_profile' >> ~/.bashrc;
cp root/.bash_profile ~/;
cp root/.bash_color   ~/;
cp -r root/.vim       ~/;
cp root/.vimrc        ~/;
cp root/.tmux.conf    ~/;
source ~/.bashrc;

# Set up user
useradd -md /home/User -s /bin/bash -U User;
echo 'Setting User Password';
passwd User;
echo 'source ~/.bash_profile' >> /home/User/.bashrc;
cp user/.bash_profile /home/User;
cp user/.bash_color   /home/User;
cp -r user/.vim       /home/User;
cp user/.vimrc        /home/User;
cp user/.tmux.conf    /home/User;
chown User:User /home/User/.bash_profile;
chown User:User /home/User/.vimrc;
chown User:User /home/User/.tmux.conf;

# Set up programs
apt-get install apache2;
ln -s /var/www/html /home/User/www;
chmod 777 /var/www/html;
ufw allow ssh;
ufw allow http;
ufw enable;
