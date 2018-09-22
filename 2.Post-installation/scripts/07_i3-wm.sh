#!/bin/bash

echo "Installing i3-wm"
sudo pacman -S --noconfirm --needed i3 playerctl dmenu  
echo

echo "Copying Configurations"
cp -R dotfiles/i3/. ~/
echo