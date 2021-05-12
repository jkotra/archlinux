#!/bin/bash

pacstrap /mnt base base-devel linux-lts linux-firmware linux-lts-headers python
echo "swap partition:"
read swap
swapon $swap
cp -R archlinux /mnt
genfstab -U /mnt >> /mnt/etc/fstab