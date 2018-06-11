#!/bin/bash
DOTFILES_REMOTE=https://github.com/tkazusa/dotfiles
#DOTDIR=$HOME/src/github.com/tkazusa/dotfiles
DOTDIR=$HOME/dotfiles

# install packages
if which apt-get > /dev/null; then
   apt-get -y install git
   source $DOTDIR/install.d/apt.sh
   source $DOTDIR/install.d/link.sh
   source $DOTDIR/install.d/pip3.sh
fi


# gitconfig
touch $HOME/.gitconfig
if ! `grep "\[include\]" $HOME/.gitconfig > /dev/null`; then
  cat << EOF >> $HOME/.gitconfig
[include]
	path = $DOTDIR/.gitconfig.local
EOF
fi

#change shell from bash to fish
chsh -s /usr/bin/fish
install oh-my-fish
curl -L http://get.oh-my.fish | fish  
exec fish

install peco plugin to oh-my-fish
omf install peco
