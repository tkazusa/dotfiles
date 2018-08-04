#!/bin/bash
DOTFILES_REMOTE=https://github.com/tkazusa/dotfiles
#DOTDIR=$HOME/src/github.com/tkazusa/dotfiles
DOTDIR=$HOME/dotfiles

# install packages
if which apt-get > /dev/null; then
   apt-get -y install git
   source $DOTDIR/install.d/apt-get.sh
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

# install peco_dir_change function
# 
omf install peco
wget https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz
tar -xvf go1.9.3.linux-amd64.tar.gz
chown -R root:root ./go
mv go /usr/local

go get github.com/motemen/ghq
