#!/bin/bash
DOTDIR=$HOME/dotfiles

ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vim $HOME

# .config
ln -s $DOTDIR/.config $HOME

# bashrc
ln -s $DOTDIR/.bashrc $HOME/.bashrc
ln -s $DOTDIR/.bash_profile $HOME/.bash_profile

