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
USERNAME='User'
useradd -md /home/$USERNAME -s /bin/bash -U $USERNAME;
echo 'Setting' $USERNAME 'Password';
passwd $USERNAME;
echo 'source ~/.bash_profile' >> /home/$USERNAME/.bashrc;
cp user/.bash_profile /home/$USERNAME;
cp user/.bash_color   /home/$USERNAME;
cp -r user/.vim       /home/$USERNAME;
cp user/.vimrc        /home/$USERNAME;
cp user/.tmux.conf    /home/$USERNAME;
chown $USERNAME:$USERNAME /home/$USERNAME/.bash_profile;
chown $USERNAME:$USERNAME /home/$USERNAME/.vimrc;
chown $USERNAME:$USERNAME /home/$USERNAME/.tmux.conf;

# Set up programs
apt-get install apache2;
ln -s /var/www/html /home/$USERNAME/www;
chmod 777 /var/www/html;
apt-get install php5 libapache2-mod-php5 php5-mcrypt;
ufw allow ssh;
ufw allow http;
ufw enable;
