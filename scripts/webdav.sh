#!/bin/bash

mkdir -p ~/.config/systemd/user/
cp webdav.service ~/.config/systemd/user/
systemctl --user enable --now webdav