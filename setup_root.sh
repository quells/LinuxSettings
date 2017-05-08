#!/bin/bash

# Set up root
cp dotfiles/bash_profile.sh $HOME/.bash_profile;
cp dotfiles/root_color.sh   $HOME/.bash_color;
cp dotfiles/vimrc.vim       $HOME/.vimrc;
cp dotfiles/tmux.conf       $HOME/.tmux.conf;

echo 'source $HOME/.bash_profile' >> $HOME/.bashrc;
source $HOME/.bashrc;
