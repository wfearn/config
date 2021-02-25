#!/bin/bash

REPO_HOME=$HOME/config

mkdir -p ~/.vim/snippets
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# TODO: Make this grab all snippet files instead of having to input these individually
# terminal
ln -s $REPO_HOME/.inputrc $HOME/.inputrc
ln -s $REPO_HOME/vim/.vimrc $HOME/.vimrc
ln -s $REPO_HOME/vim/snippets/python.snippets $HOME/.vim/snippets/python.snippets
ln -s $REPO_HOME/vim/snippets/bib.snippets $HOME/.vim/snippets/bib.snippets
ln -s $REPO_HOME/vim/snippets/java.snippets $HOME/.vim/snippets/java.snippets
ln -s $REPO_HOME/vim/snippets/html.snippets $HOME/.vim/snippets/html.snippets
ln -s $REPO_HOME/vim/snippets/cs.snippets $HOME/.vim/snippets/cs.snippets

vim +PluginInstall +qa

# tmux
ln -s $REPO_HOME/tmux/.tmux.conf $HOME/.tmux.conf
