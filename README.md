# archlinux - Quick Start

---

## MySQL

`docker run --name mysql-server -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password --restart unless-stopped -d mysql`

`docker exec -it mysql-server "bash"`


## Postgres

`docker run --name postgres-server -e POSTGRES_PASSWORD=password -p 127.0.0.1:5432:5432 -v ~/pgdata:/var/lib/postgresql/data --restart unless-stopped -d postgres`

## MongoDB

`docker run --name mongo-server -p 27017:27017 --restart unless-stopped -d mongo:latest`

## Redis

`docker run --name redis-server -p 6379:6379 --restart unless-stopped -d redis`

# Arch Installation (Mock)

```
# pacstrap

#!/bin/bash

pacstrap /mnt base base-devel linux-lts linux-firmware linux-lts-headers python
cp -R archlinux /mnt
genfstab -U /mnt >> /mnt/etc/fstab

useradd -m -g users -G wheel -s /bin/bash $username
passwd $username
passwd
EDITOR=nano visudo

sudo echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8

pacman -S reflector
systemctl enable NetworkManager.service
systemctl enable fstrim.timer
sudo systemctl enable reflector.timer

sudo pacman -S xorg gnome gnome-themes-extra gnome-tweaks
systemctl enable gdm.service
```