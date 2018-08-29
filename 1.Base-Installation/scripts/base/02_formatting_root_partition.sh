#!/bin/bash

#Note: It requires modification to prevent data loss

echo -e "\nFormatting root partition\n"
#Replace /dev/sda5 with your root partition
mkfs.ext4 /dev/sda5
echo

echo -e "\nFormatting home partition\n"
#Replace /dev/sda9 with your root partition
#Remove if you donot have separate home partition
mkfs.ext4 /dev/sda9
echo