# archlinux

---

## Order

1. `pacstrap.sh`
2. `arch-chroot /mnt`
3. `efi.sh`
4. `create_user/sh`
5. `finish.sh`

## PGP GTK Prompt

```
mkdir ~/.gnupg
touch ~/.gnupg/gpg-agent.conf
echo 'pinentry-program /usr/bin/pinentry-gnome3' >> ~/.gnupg/gpg-agent.conf
```

## MySQL
```
docker run --name mysql-server -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d mysql
docker exec -it mysql-server "bash"
```

## MiniDLNA

* in systemd unit file set `ProtectHome=off`

## Wayland

[Guide](https://forum.endeavouros.com/t/enable-wayland-gnome-gdm-with-nvidia-and-make-gestures-suspend-work/31621)

## Plymouth

https://wiki.archlinux.org/title/plymouth
[YT Video](https://www.youtube.com/watch?v=eTk2yG1JFsE)

