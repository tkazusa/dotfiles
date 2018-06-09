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

# Prep for python3
pip3 install --upgrade neovim


#Install fish
$APT_CMD apt-file
apt-file update
$APT_CMD software-properties-common
apt-add-repository ppa:fish-shell/release-2
$APT_CMD fish


#Install peco
wget https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_amd64.tar.gz
tar zxvf peco_linux_amd64.tar.gz
cp peco_linux_amd64/peco /usr/local/bin/
chmod 777 /usr/local/bin/peco
