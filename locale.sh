#!/bin/bash

sudo echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8