#!/bin/bash

echo "Installing Fonts"
sudo pacman -S --noconfirm --needed ttf-dejavu noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk
yay -S --noconfirm ttf-material-icons-git
echo