#!/bin/bash
DOTDIR=$HOME/dotfiles

# --------------------
# Install packages
# --------------------
source $DOTDIR/install.d/apt-get.sh
source $DOTDIR/install.d/install-fish.sh
source $DOTDIR/install.d/install-nvim.sh
source $DOTDIR/install.d/pip3.sh
source $DOTDIR/install.d/link.sh

# -------------------
# Set gitconfigs
# -------------------
touch $HOME/.gitconfig
if ! `grep "\[include\]" $HOME/.gitconfig > /dev/null`; then
  cat << EOF >> $HOME/.gitconfig
[include]
	path = $DOTDIR/.gitconfig.local
EOF
fi
