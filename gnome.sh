#!/bin/bash

sudo pacman -S xorg xorg-server gnome pipewire
systemctl enable gdm.service