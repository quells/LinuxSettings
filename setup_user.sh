#!/bin/bash

# Set up user if `USERNAME` is set
if [ -n $USERNAME ]
then
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
else
	echo '`USERNAME` is not set.'
fi
