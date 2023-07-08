#!/bin/bash

sudo pacman -S nvidia-lts nvidia-settings
sudo mkinitcpio -p linux-lts
sudo cp -R nv.conf /etc/X11/xorg.conf.d/20-nvidia.conf
