#!/bin/bash

DOTFILES_REMOTE=https://github.com/tkazusa/dotfiles
DOTDIR=$HOME/src/github.com/tkazusa/dotfiles

# install packages
if which apt-get > /dev/null; then
   apt-get -y install git
   git clone $DOTFILES_REMOTE $DOTDIR
   source $DOTDIR/install.d/apt.sh

fi


# gitconfig
touch $HOME/.gitconfig
if ! `grep "\[include\]" $HOME/.gitconfig > /dev/null`; then
  cat << EOF >> $HOME/.gitconfig
[include]
	path = $DOTDIR/.gitconfig.local
EOF
fi


nvim -c "
set shortmess=a
set nomore
call dein#update()
q"
