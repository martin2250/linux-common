#!/bin/bash

export PATH=$PATH:~/bin

if CMD_AVAILABLE go; then
	export GOPATH=~/go
	export PATH=$PATH:$GOPATH/bin
fi

export EDITOR=/usr/bin/nano

# enable colors in man
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
