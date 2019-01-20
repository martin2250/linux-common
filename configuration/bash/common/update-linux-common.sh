#!/bin/bash

STATUSFILE="/run/user/$UID/update-linux-common"

if [ -f $STATUSFILE ]; then
	printf "${RED}"
	printf "###############################\n"
	printf "# linux-common not up to date #\n"
	printf "###############################\n"
	printf "${RESET}"
	read -p "update linux-common? (y/n): " -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		cd $HOME/linux-common || (printf "${RED}linux-common not found${RESET}\n"; exit 1)
		git pull && rm ${STATUSFILE}
	fi
fi
