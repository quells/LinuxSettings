#!/bin/bash

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
