#!/bin/bash
APT_CMD="apt-get install -y"

$APT_CMD \
	neovim \
	python-neovim \
	python3-neovm

pip3 install pynvim
