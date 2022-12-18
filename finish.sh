#!/bin/bash

pacman -S reflector

systemctl enable NetworkManager.service
systemctl enable fstrim.timer
sudo systemctl enable reflector.timer
