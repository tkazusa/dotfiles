#!/bin/bash
APT_CMD="apt-get install -y"

apt-get update

$APT_CMD software-properties-common
apt-get update

# common
$APT_CMD git htop curl cmake man python3-pip rsync unzip vim wget

# tmux
$APT_CMD tmux

#Language
$APT_CMD language-pack-ja-base language-pack-ja ibus-mozc
