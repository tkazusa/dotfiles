#!/bin/bash

APT_CMD="apt-get install -y"

# common
$APT_CMD gawk git golang vim wget

# tmux
add-apt-repository -y ppa:pi-rho/dev
apt-get Update
apt-get install -y tmux

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
