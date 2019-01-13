#!/bin/bash

RED="\[\033[1;31m\]"
GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
RESET="\[\033[0m\]"

source /etc/profile.d/vte.sh

function PS_Exit
{
	ES=$?

	if [ $ES -ne 0 ]; then
		echo -en "\[\\033[1;31m\]$ES"
	else
		echo -en "\[\\033[1;32m\]✔"
	fi
}

function timer_start {
	timer=${timer:-$SECONDS}
	echo -en '\033]2;'$BASH_COMMAND'\007'
}

trap 'timer_start' DEBUG

function PS_Set_Prompt
{
	PS1="$(PS_Exit) ${GREEN}$(($SECONDS - $timer))s ${YELLOW}\$(date +%H:%M) ${GREEN}\u@\h ${BLUE}\W\n${GREEN}\$${RESET}"
	printf "$(__vte_osc7)"
	unset timer
	echo -en '\033]2;'$(basename "$PWD")'\007'
}

PROMPT_COMMAND=PS_Set_Prompt
