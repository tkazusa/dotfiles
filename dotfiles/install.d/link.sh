#!/bin/bash
DOTDIR=$HOME/dotfiles

ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.config $HOME
ln -s $DOTDIR/.bashrc $HOME
ln -s $DOTDIR/.bash_profile $HOME

