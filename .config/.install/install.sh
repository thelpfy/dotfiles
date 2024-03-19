#!/bin/bash

folder="./packages"

# install yay
git clone https://aur.archlinux.org/yay-git.git
cd ./yay-git
makepkg -si
cd ..
rm -rf ./yay-git

# general
sudo pacman -S - < $folder/general.pac.txt

# essentials
sudo pacman -S - < $folder/essentials.pac.txt
yay -S - < $folder/essentials.yay.txt

# tools
sudo pacman -S - < $folder/tools.pac.txt
yay -S - < $folder/tools.yay.txt

# install joplin

wget https://github.com/laurent22/joplin/releases/download/v2.14.19/Joplin-2.14.19.AppImage

# Chnage shell
chsh -s /usr/bin/zsh
