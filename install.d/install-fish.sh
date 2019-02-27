#!/bin/bash
APT_CMD="apt-get install -y"
DOTDIR=$HOME/dotfiles

# fish
$APT_CMD fish

# fisher
curl https://git.io/fisher --create-dirs -sLo $DOTDIR/.config/fish/functions/fisher.fish
