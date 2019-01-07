#!/bin/bash

repo_home=$HOME/config

#vim
mkdir -p $HOME/.vim/colors
wget https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim -O $HOME/.vim/colors/dracula.vim

ln -s $repo_home/vim/.vimrc $HOME/.vimrc

#tmux
ln -s $repo_home/tmux/.tmux.conf $HOME/.tmux.conf
