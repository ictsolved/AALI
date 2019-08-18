#!/bin/bash

echo "Installing JWM Window Manager"
sudo pacman -S --noconfirm --needed jwm
echo

echo "Copying Configurations"
cp -R scripts/dotfiles/jwm/. ~/
echo