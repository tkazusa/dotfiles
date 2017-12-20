#!/bin/bash

APT_CMD="apt-get install -y"

# common
$APT_CMD gawk git golang vim wget tar libevent-dev libncurses-dev

# tmux
#add-apt-repository -y ppa:pi-rho/dev
#apt-get Update
#apt-get install -y tmux


VERSION=2.5
apt-get -y remove tmux
apt-get -y install wget tar libevent-dev libncurses-dev
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure
make
make install
cd -
rm -rf /usr/local/src/tmux-*
mv tmux-${VERSION} /usr/local/src

## Logout and login to the shell again and run.
## tmux -V
echo "export TERM=xterm-256color" >> .bashrc

# build tools
$APT_CMD make build-essential


# for dot / plantuml
$APT_CMD graphviz


# No neovim repository for apt-get
# add-apt-repository is necessary for add repos
$APT_CMD software-properties-common

# Installing python-software-properties for ubuntu
apt-get install python-software-properties

# Adding neovim reposigory to apt-get
add-apt-repository ppa:neovim-ppa/stable

#Update reposigory
apt-get update

# Installing neovim
$APT_CMD neovim

# Config files for neovim
mkdir -p ~/.config/nvim
# touch ~/.config/nvim/init.vim


# Prep for python3
pip3 install --upgrade neovim
