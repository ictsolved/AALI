#!/bin/bash
# If you need VLC, install vlc and qt package instead of smplayer
echo "Installing VLC and Codecs"
sudo pacman -S --noconfirm --needed vlc gst-libav
echo
