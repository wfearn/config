#!/bin/bash

REPO_HOME=$HOME/config

# terminal
ln -s $REPO_HOME/.inputrc $HOME/.inputrc
ln -s $REPO_HOME/vim/.vimrc $HOME/.vimrc
ln -s $REPO_HOME/vim/snippets/python.snippets $HOME/.vim/snippets/python.snippets
ln -s $REPO_HOME/vim/snippets/bib.snippets $HOME/.vim/snippets/bib.snippets
ln -s $REPO_HOME/vim/snippets/java.snippets $HOME/.vim/snippets/java.snippets
ln -s $REPO_HOME/vim/snippets/html.snippets $HOME/.vim/snippets/html.snippets

vim +PluginInstall +qa

# tmux
ln -s $REPO_HOME/tmux/.tmux.conf $HOME/.tmux.conf
