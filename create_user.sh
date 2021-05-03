#!/bin/bash

echo "Username:"
read username
useradd -m -g users -G wheel -s /bin/bash $username

echo "Hostname:"
read hostname
echo $hostname > /etc/hostname
echo "Enter Password."
passwd