#!/bin/bash
APT_CMD="apt-get install -y"

$APT_CMD software-properties-common
add-apt-repository ppa:neovim-ppa/stable
apt-get update

$APT_CMD neovim \
	python-dev \
	python-pip \
	python3-dev \
	python3-pip \
	python-neovim \
	python3-neovim

pip3 install pynvim
