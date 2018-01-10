#!/bin/bash
DOTDIR=$HOME/dotfiles

ln -s $DOTDIR/.tmux.conf $HOME
ln -s $DOTDIR/.vim $HOME


# .config
mkdir -p $HOMR/.config/nvim
ln -s $DOTDIR/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -s $DOTDIR/.config/nvim/colors $HOME/.config/nvim/colors
ln -s $DOTDIR/.config/fish ln -s $HOME/.config/fish 

# bashrc
ln -s $DOTDIR/.bashrc $HOME/.bashrc
ln -s $DOTDIR/.bash_profile $HOME/.bash_profile


  
