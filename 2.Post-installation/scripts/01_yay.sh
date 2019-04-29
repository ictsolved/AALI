#!/bin/bash

echo "Downloading package"
wget https://aur.archlinux.org/cgit/aur.git/snapshot/yay-bin.tar.gz
curl https://github.com/Jguer/yay/releases | grep _x86_64.tar.gz | cut -d : -f 2,3 | tr -d \" | sed -n '1p' | sed 's/^.*\(Jguer.*\)/\1/g' | cut -f1 -d" " | sed "s|^|https://github.com/|" | wget -qi -

echo "Building package"
tar --strip-components=1 -zxf yay-bin.tar.gz
makepkg

echo "Installing package"
sudo pacman -U yay-*.pkg.tar.xz --noconfirm

echo "Removing temporary files"
rm -rf pkg/ src/ yay* PKGBUILD

echo "Updating package repository"
yay -Syu
echo