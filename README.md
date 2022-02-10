# archlinux

---

# Other important Notes / Tweaks


## PGP GTK Prompt

```sh
mkdir ~/.gnupg
touch ~/.gnupg/gpg-agent.conf
echo 'pinentry-program /usr/bin/pinentry-gnome3' >> ~/.gnupg/gpg-agent.conf
```

## Media Thumbs

```sh
sudo pacman -S ffmpegthumbnailer gst-libav gst-plugins-ugly
rm -rf ~/.cache/thumbnails/fail/
```

## Nvidia Limited Color Fix

`sudo nvidia-xconfig`

```conf
Section "Device"
    Identifier     "Device0"
    Driver         "nvidia"
    VendorName     "NVIDIA Corporation"
    BoardName      "GeForce GTX 1050 Ti"
    Option         "ColorRange" "Limited"
EndSection

Section "Screen"
    Identifier     "Screen0"
    Device         "Device0"
    Monitor        "Monitor0"
    DefaultDepth    24
    Option         "Stereo" "0"
    Option         "nvidiaXineramaInfoOrder" "DFP-1"
    Option         "metamodes" "nvidia-auto-select +0+0 {ForceFullCompositionPipeline=On}"
    Option         "AllowIndirectGLXProtocol" "off"
    Option         "TripleBuffer" "on"
    Option         "SLI" "Off"
    Option         "MultiGPU" "Off"
    Option         "BaseMosaic" "off"
    SubSection     "Display"
        Depth       24
    EndSubSection
EndSection
```

`sudo cp -R nvidia.conf /etc/X11/xorg.conf.d/20-nvidia.conf`

