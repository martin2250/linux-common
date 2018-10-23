## Link ~/.bashrc
```
rm ~/.bashrc
ln -s ~/linux-common/configuration/bashrc ~/.bashrc
ln -s ~/linux-common/bin ~/.bin
```

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
