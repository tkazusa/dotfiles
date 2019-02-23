#!/bin/bash
APT_CMD="apt-get install -y"
DOTDIR=$HOME/dotfiles

$APT_CMD fish
curl https://git.io/fisher --create-dirs -sLo DOTDIR/.config/fish/functions/fisher.fish
