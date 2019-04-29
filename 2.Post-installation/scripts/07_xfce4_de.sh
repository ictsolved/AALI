#!/bin/bash

echo "Installing XFCE4 Desktop Environment"
sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies xfce4-pulseaudio-plugin xscreensaver
echo

echo "Installing Greybird theme and icons"
yay -S --noconfirm -S xfce-theme-greybird elementary-xfce-icons-git
echo

echo "Copying Configurations"
cp -R dotfiles/xfce4/. ~/
echo