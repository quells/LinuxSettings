#!/bin/bash

# Set up root
cp scripts/bash_profile.sh $HOME/.bash_profile;
cp scripts/root_color.sh   $HOME/.bash_color;
cp scripts/vimrc.sh        $HOME/.vimrc;
cp scripts/tmux.conf       $HOME/.tmux.conf;

echo 'source $HOME/.bash_profile' >> $HOME/.bashrc;
source $HOME/.bashrc;
