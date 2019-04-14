## automatically update linux common
put into startup applications:
```bash
bash -c "cd ~/linux-common && git pull && notify-send 'linux-common updated'"
```

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

## give permissions for UsbTinyISP:
`sudo nano /etc/udev/rules.d/99-UsbTinyISP.rules`
```
SUBSYSTEM=="usb", ATTR{product}=="USBtinySPI", ATTR{idProduct}=="0c9f", ATTRS{idVendor}=="1781", MODE="0666", GROUP="uucp"
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
