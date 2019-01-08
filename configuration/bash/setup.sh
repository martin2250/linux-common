#!/bin/bash

# DON'T SOURCE THIS
# this is only used for setting up things initally

BASHPATH="$( cd "$(dirname "$0")" ; pwd -P )"

rm -f $HOME/bin
ln -s $BASEPATH/../../bin $HOME/bin
rm -f "$HOME/.bashrc"
rm -f "$HOME/.bash_profile"
ln -s "$BASHPATH/bashrc.sh" "$HOME/.bashrc"
ln -s "$BASHPATH/bashrc.sh" "$HOME/.bash_profile"
mkdir -p "$HOME/.bash"
rm -f "$HOME/.bash/common"
ln -s "$BASHPATH/common" "$HOME/.bash/"
