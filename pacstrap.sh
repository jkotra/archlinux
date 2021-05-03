#!/bin/bash

pacstrap /mnt base base-devel linux-lts linux-firmware python
genfstab -U /mnt >> /mnt/etc/fstab
echo "swap partition:"
read swap
swapon $swap
cp -R archlinux /mnt