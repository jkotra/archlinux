#!/bin/bash

systemctl enable NetworkManager.service
systemctl enable fstrim.timer

pacman -Rs xorg-fonts-75dpi xorg-fonts-100dpi
