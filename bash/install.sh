#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

# Config
ln -s ${BASEDIR}/config/fish ~/.config/
ln -s ${BASEDIR}/config/alacritty ~/.config/
ln -s ${BASEDIR}/config/omf ~/.config/
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# Apt
sudo apt update && sudo apt dist-upgrade -y
sudo apt install build-essential git cmake

# Install Rust
curl https://sh.rustup.rs -sSf | sh

# TODO: Install Alacritty
# TODO: Install Nerd Fonts
# TODO: Install LSD
# TODO: Install Fish

# Alacritty
#https://github.com/jwilm/alacritt

# Nerd Fonts - Specifically "Fura Mono Nerd Font"
#https://github.com/ryanoasis/nerd-fonts
