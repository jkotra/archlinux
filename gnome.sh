#!/bin/bash

sudo pacman -S xorg xorg-server gnome gnome-themes-extra pipewire
systemctl enable gdm.service