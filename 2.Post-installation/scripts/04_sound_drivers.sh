#!/bin/bash
#If you use DE, also install pauvcontrol for volume icon
echo "Installing Sound Drivers"
sudo pacman -S --noconfirm --needed alsa-utils alsa-plugins pulseaudio pulseaudio-alsa
echo