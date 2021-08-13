#!/bin/bash

echo "Username:"
read username
useradd -m -g users -G wheel -s /bin/bash $username
passwd $username

echo "Hostname:"
read hostname
echo $hostname > /etc/hostname
echo "Enter root Password."
passwd

EDITOR=nano visudo
