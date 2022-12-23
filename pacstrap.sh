#!/bin/bash

set -e

pacstrap /mnt base base-devel linux-lts linux-firmware linux-lts-headers python
cp -R archlinux /mnt
genfstab -U /mnt >> /mnt/etc/fstab