#!/bin/bash

APT_PACKAGES="git zsh curl wget stow python3
  make snapd linux-tools-common linux-tools-generic
  software-properties-common
  tmux htop aria2 fasd keychain
  exuberant-ctags neovim python-dev python-pip python3-dev python3-pip"



DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
DEBIAN_FRONTEND=noninteractive add-apt-repository --yes "ppa:neovim-ppa/stable"

DEBIAN_FRONTEND=noninteractive apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -y $APT_PACKAGES
DEBIAN_FRONTEND=noninteractive apt -y autoremove
DEBIAN_FRONTEND=noninteractive apt-get -y clean
