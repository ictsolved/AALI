#!/bin/bash

#Useful to chroot other Linux OS
#execute this script from Linux machine (Live or Installed)

echo "Mounting root partition"
#Mounting root partition
#change /dev/sda9 accordingly
sudo mount /dev/sda9 /mnt
echo

echo "Binding Directories"
sudo mount --rbind /dev /mnt/dev
sudo mount --make-rslave /mnt/dev
sudo mount -t proc /proc /mnt/proc
sudo mount --rbind /sys /mnt/sys
sudo mount --make-rslave /mnt/sys
sudo mount --rbind /mnt /mnt/mnt
echo

echo "Copying network configurations"
#to make internet available inside chroot
sudo cp /etc/resolv.conf /mnt/etc
echo

echo "Changing root"
#chrooting
sudo chroot /mnt /bin/bash
echo

echo "Unmounting from chroot"
#will execute after exiting chroot
sudo umount --recursive /mnt
echo