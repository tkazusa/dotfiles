#!/bin/bash
APT_CMD="apt-get install -y"

apt-get update

#common
$APT_CMD \
	git    \
	htop   \
	curl   \
	cmake  \
	less   \
	man    \
	pip3   \
  rsync  \
	tmux   \ 
	unzip  \
	vim    \
	wget   \


#Language
$APT_CMD \
	language-pack-ja-base \
	language-pack-ja \
	ibus-mozc
