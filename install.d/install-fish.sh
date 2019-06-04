#!/bin/bash
APT_CMD="apt-get install -y"

# fish
apt-add-repository ppa:fish-shell/release-3
apt-get update 
$APT_CMD fish

# fisher
# curl https://git.io/fisher --create-dirs -sLo $DOTDIR/.config/fish/functions/fisher.fish
