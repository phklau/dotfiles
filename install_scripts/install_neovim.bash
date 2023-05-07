#!/usr/bin/env bash

#set -x
set -e

while true; do
    read -p "Do you have nvim installed? (y/n) " yn

    case $yn in
        [yYjJ] ) break;;
        [nN] ) echo "Please install nvim first ..."
            exit;;
    esac
done
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
source ../neovim/.config/nvim/lua/studiumsetup/packer.lua
echo "Run :PackerSync to install Plugins"
