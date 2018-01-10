#!/bin/bash

ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vim $HOME


# neovim
mkdir -p $HOMR/.config/nvim
ln -s $DOTDIR/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -s $DOTDIR/.config/nvim/colors $HOME/.config/nvim/colors

# bashrc
ln -s $DOTDIR/.bashrc $HOME/.bashrc
ln -s $DOTDIR/.bash_profile $HOME/.bash_profile

