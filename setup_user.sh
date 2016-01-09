#!/bin/bash

# Ask for username
echo -n "Username: "
read USERNAME

# Create user and set password
useradd -md /home/$USERNAME -s /bin/bash -U $USERNAME;
echo 'Setting' $USERNAME 'Password';
passwd $USERNAME;

# Set up bash, vim, and tmux profiles
echo 'source ~/.bash_profile' >> /home/$USERNAME/.bashrc;
cp user/.bash_profile /home/$USERNAME;
cp user/.bash_color   /home/$USERNAME;
cp -r user/.vim       /home/$USERNAME;
cp user/.vimrc        /home/$USERNAME;
cp user/.tmux.conf    /home/$USERNAME;
chown $USERNAME:$USERNAME /home/$USERNAME/.bash_profile;
chown $USERNAME:$USERNAME /home/$USERNAME/.vimrc;
chown $USERNAME:$USERNAME /home/$USERNAME/.tmux.conf;

# Add symbolic link to web root
ln -s /var/www/html /home/$USERNAME/www;
