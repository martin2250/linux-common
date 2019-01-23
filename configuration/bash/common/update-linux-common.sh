#!/bin/bash

STATUSFILE="/run/user/$UID/update-linux-common"

if [ -f $STATUSFILE ]; then
	echo "${RED}"
	echo "###############################"
	echo "# linux-common not up to date #"
	echo "###############################"
	echo "${RESET}"
	read -p "update linux-common? (y/n): " -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		pushd $HOME/linux-common || (printf "${RED}linux-common not found${RESET}\n"; exit 1)
		git pull && rm ${STATUSFILE}
		popd
	fi
fi
