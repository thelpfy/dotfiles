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
yay -S - < $folder/general.yay.txt

# hyprland
sudo pacman -S - < $folder/hyprland.pac.txt
yay -S - < $folder/hyprland.yay.txt

# essentials
sudo pacman -S - < $folder/essentials.pac.txt
yay -S - < $folder/essentials.yay.txt

# tools
sudo pacman -S - < $folder/tools.pac.txt
yay -S - < $folder/tools.yay.txt

# wallpapers
bash ./wallpapers/install.sh
wal -i ~/.config/wallpapers/default.jpg

# Services
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo systemctl enable bluetooth
sudo systemctl start bluetooth
