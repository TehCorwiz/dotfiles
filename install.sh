#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

# Config
ln -s ${BASEDIR}/.config ~/.config

# Apt
sudo apt update && sudo apt dist-upgrade -y
sudo apt install build-essential git cmake

# Install Rust
curl https://sh.rustup.rs -sSf | sh

# TODO: Install Alacritty
# TODO: Install LSD
# TODO: Install Silver

