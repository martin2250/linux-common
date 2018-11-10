#!/bin/bash

# DON'T SOURCE THIS
# this is only used for setting up things initally

BASHPATH="$( cd "$(dirname "$0")" ; pwd -P )"

ln -s ~/linux-common/bin ~/
rm -f "/home/$USER/.bashrc"
ln -s "$BASHPATH/bashrc.sh" "/home/$USER/.bashrc"
mkdir -p "/home/$USER/.bash"
rm -f "/home/$USER/.bash/common"
ln -s "$BASHPATH/common" "/home/$USER/.bash/"
