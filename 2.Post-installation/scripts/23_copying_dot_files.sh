#!/bin/bash

echo "Copying Configurations"
echo >> ~/.xinitrc exec startxfce4
cp -R ../3.Customizations/dotfiles/./ ~/
echo