#!/bin/bash

#Note: It requires modification to prevent data loss

echo -e "\nTurning on swap partition\n"
#Change /dev/sda8 with your swap partition
mkswap /dev/sda8
swapon /dev/sda8
echo