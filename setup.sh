#!/bin/bash

REPO_HOME=$HOME/config

#vim
mkdir -p $HOME/.vim/colors
mkdir -p $HOME/.vim/snippets

wget https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim -O $HOME/.vim/colors/dracula.vim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

ln -s $REPO_HOME/vim/.vimrc $HOME/.vimrc
ln -s $REPO_HOME/vim/snippets/python.snippets $HOME/.vim/snippets/python.snippets
ln -s $REPO_HOME/vim/snippets/bib.snippets $HOME/.vim/snippets/bib.snippets


#tmux
ln -s $REPO_HOME/tmux/.tmux.conf $HOME/.tmux.conf
