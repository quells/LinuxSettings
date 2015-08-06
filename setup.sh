#!/bin/bash

# Update packages
aptitude update;
aptitude upgrade;
apt-get update;
apt-get upgrade;

# Set up root
echo 'source ~/.bash_profile' >> .bashrc;
cp root/.bash_profile ~/.bash_profile;
cp root/.bash_color ~/.bash_color;
cp root/.vimrc ~/.vimrc;
cp root/.tmux.conf ~/.tmux.conf;
source .bashrc;

# Set up user
useradd -md /home/User -s /bin/bash -U User;
echo 'Setting User Password';
passwd User;
echo 'source ~/.bash_profile' >> /home/User/.bashrc;
cp user/.bash_profile /home/User/.bash_profile;
cp user/.bash_color /home/User/.bash_color;
cp user/.vimrc /home/User/.vimrc;
cp user/.tmux.conf /home/User/.tmux.conf;

# Set up programs
apt-get install apache2;
ufw allow ssh;
ufw allow tcp;
ufw enable;
