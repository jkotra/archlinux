#!/bin/bash

pacstrap /mnt base base-devel linux-lts linux-firmware python
echo "swap partition:"
read swap
swapon $swap
cp -R archlinux /mnt
genfstab -U /mnt >> /mnt/etc/fstab