# archlinux

---

## Order

1. `pacstrap.sh`
2. `arch-chroot /mnt`
3. `efi.sh`
4. `create_user/sh`
5. `finish.sh`

## PGP GTk Prompt

```
mkdir ~/.gnupg
touch ~/.gnupg/gpg-agent.conf
echo 'pinentry-program /usr/bin/pinentry-gnome3' >> ~/.gnupg/gpg-agent.conf
```