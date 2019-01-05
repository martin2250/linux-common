# Packages
```bash
## first pacman -S required, second optional
# tools
sudo pacman -S fzf bat htop screen traceroute nmon nmap jq vim perf p7zip git
sudo pacman -S docker tldr platformio-git windscribe-cli android-tools imagemagick libqalculate

# gui
sudo pacman -S gitkraken inkscape atom gimp vlc qalculate-gtk blender thunderbird gparted pdfshuffler sonata audacity clementine
sudo pacman -S kicad kicad-library-3d saleae-logic

# libs
sudo pacman -S noto-fonts-emoji chromium-widevine


# AUR
yay -S station pix circuit-simulator
```

## Latex + Python
```bash
sudo pacman -S ghostscript texlive-core texlive-latexextra texlive-fontsextra texlive-science tk pstoedit
sudo pacman -S python-numpy python-scipy python-matplotlib python-argcomplete autopep8 python-pyserial


pip install kafe --user
updmap		#important! updates font cache to fix an error with pyplot
```
