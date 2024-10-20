#!/bin/bash

pacman -S nano grub efibootmgr os-prober networkmanager
grub-install --target=x86_64-efi --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
