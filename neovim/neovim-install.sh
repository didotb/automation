#!/bin/bash

archivename=neovim-$(uname -i).tar.gz

# Install pre-requisites
sudo apt update
sudo apt install git npm unzip gcc make ripgrep tree-sitter-cli -y

# Download latest neovim
wget -O $archivename https://github.com/neovim/neovim/releases/latest/download/nvim-linux-$(uname -i).tar.gz

# Extract archive
mkdir nvim
tar xzf $archivename --strip 1 -C nvim

# Copy to usr directory
sudo cp -R ./nvim/* /usr/

# Install NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
