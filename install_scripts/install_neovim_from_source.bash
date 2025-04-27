#!/usr/bin/env bash

sudo apt install ninja-build gettext cmake curl build-essential
mkdir ~/neovim
git clone https://github.com/neovim/neovim ~/neovim
cd ~/neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

