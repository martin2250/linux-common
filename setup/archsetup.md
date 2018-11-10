## (on PC) disable usb autosuspend to fix problems with USB hub
add `usbcore.autosuspend=-1` to `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub`
then run `sudo grub-mkconfig -o /boot/grub/grub.cfg`

## Use all cores for yaourt compiling
`MAKEFLAGS="-j6"` in `/etc/makepkg.conf`

## Disable yaourt edit PKGBUILD
```
NOCONFIRM=1
BUILD_NOCONFIRM=1
EDITFILES=0
```
in `~/.yaourtrc`

## Change numpad comma to dot
```
dconf write /org/gnome/libgnomekbd/keyboard/options "['kpdl\tkpdl:dotoss']"
```

## give user serial port permissions
```
sudo usermod -aG uucp $USER
sudo usermod -aG lock $USER
```

## dconf

##### Monitor for changes (find keys)
```
dconf watch /
```

##### Load or save dconf settings
```
./dconf.py [load/save] [set]
```

## disable tracker
```
gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false
gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2
```
