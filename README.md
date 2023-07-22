# archlinux

---

## Order

1. `pacstrap.sh`
2. `arch-chroot /mnt`
3. `efi.sh`
4. `create_user.sh`
5. `locale.sh`
6. `finish.sh`

7. `gnome.sh`
8. `nvidia.sh`

Note: mount /dev/sdb3 /mnt/boot/efi

## PGP GTK Prompt

```
mkdir ~/.gnupg
touch ~/.gnupg/gpg-agent.conf
echo 'pinentry-program /usr/bin/pinentry-gnome3' >> ~/.gnupg/gpg-agent.conf
```

---

## MySQL

`docker run --name mysql-server -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password --restart unless-stopped -d mysql`

`docker exec -it mysql-server "bash"`


## Postgres

`docker run --name postgres-server -e POSTGRES_PASSWORD=password -p 5432:5432 --restart unless-stopped -d postgres`

## MongoDB

`docker run --name mongo-server -p 27017:27017 --restart unless-stopped -d mongo:latest`

## Redis

`docker run --name redis-server -p 6379:6379 --restart unless-stopped -d redis`

## thelounge

`docker run -d \
  --name=thelounge \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kolkata \
  -p 9000:9000 \
  -v /home/jkotra/thelounge/config/:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/thelounge:latest`

---

# Bluetooth

```
sudo vi /etc/bluetooth/main.conf
```

Set

```
AutoEnable=true
```

---

## MiniDLNA

* Follow Arch Wiki
* in systemd unit file set `ProtectHome=off`

## Wayland

[Guide](https://forum.endeavouros.com/t/enable-wayland-gnome-gdm-with-nvidia-and-make-gestures-suspend-work/31621)

## Plymouth

https://wiki.archlinux.org/title/plymouth
[YT Video](https://www.youtube.com/watch?v=eTk2yG1JFsE)

---

## Plex

```
docker run -d \
  --name=plex \
  --net=host \
  -e PUID=1000 \
  -e PGID=1000 \
  -e VERSION=docker \
  -v /home/jkotra/Documents/plex-config:/config \
  -v /home/jkotra/DLNA:/DLNA \
  -v /home/WD_BLUE_BACKUP:/WD_BLUE \
  --restart unless-stopped \
  lscr.io/linuxserver/plex:latest
```

