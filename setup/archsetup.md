## Use all cores for yaourt compiling
`MAKEFLAGS="-j6"` in /etc/makepkg.conf

## Disable yaourt edit PKGBUILD
```
NOCONFIRM=1
BUILD_NOCONFIRM=1
EDITFILES=0
```
in `~/.yaourtrc`
