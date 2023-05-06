#!/usr/bin/env bash

#set -x
set -e

sudo apt install neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
echo "Run :PackerSync to install Plugins"
