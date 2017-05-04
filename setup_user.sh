#!/bin/bash

# Ask for username
echo -n "Username: "
read USERNAME

# Create user and set password
useradd -md /home/$USERNAME -s /bin/bash -U $USERNAME;
echo 'Setting' $USERNAME 'Password';
passwd $USERNAME;

# Set up bash, vim, and tmux profiles
cp scripts/bash_profile.sh /home/$USERNAME/.bash_profile;
cp scripts/user_color.sh   /home/$USERNAME/.bash_color;
cp scripts/vimrc.sh        /home/$USERNAME/.vimrc;
cp scripts/tmux.conf       /home/$USERNAME/.tmux.conf;

echo 'source $HOME/.bash_profile' >> /home/$USERNAME/.bashrc;
chown $USERNAME:$USERNAME /home/$USERNAME/.bashrc;
chown $USERNAME:$USERNAME /home/$USERNAME/.bash_profile;
chown $USERNAME:$USERNAME /home/$USERNAME/.bash_color;
chown $USERNAME:$USERNAME /home/$USERNAME/.vimrc;
chown $USERNAME:$USERNAME /home/$USERNAME/.tmux.conf;
