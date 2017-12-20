#!/bin/bash

ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vim $HOME

# tmux plugins
TMUXDIR=$HOME/.tmux
mkdir -p $TMUXDIR/plugins
ln -s $HOME/src/github.com/tmux-plugins/tpm $TMUXDIR/plugins/tpm

# neovim
ln -s $DOTDIR/.vim/vimrc $DOTDIR/nvim/init.vim
