#!/bin/sh
# Installing Fonts

## Linux Mint

mkdir -p ~/.fonts
cd ~/.fonts
git clone --depth 1 https://github.com/hbin/top-programming-fonts.git
git clone --depth 1 https://github.com/chrissimpkins/codeface.git
git clone --depth 1 https://github.com/powerline/fonts.git
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
sudo fc-cache -f -v

