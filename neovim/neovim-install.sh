#!/bin/bash

archivename=neovim-$(uname -i).tar.gz

# Install pre-requisites
apt update
apt install git npm unzip gcc make ripgrep tree-sitter-cli -y

# Download latest neovim
wget -O $archivename https://github.com/neovim/neovim/releases/latest/download/nvim-linux-$(uname -i).tar.gz

# Extract archive
Etar xzf $archivename
mkdir nvim
tar xzf $archivename --strip 1 -C nvim

# Copy to usr directory
cp -R ./nvim/* /usr/

# Install NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
