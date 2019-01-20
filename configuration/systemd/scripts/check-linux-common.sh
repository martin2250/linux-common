#!/bin/bash

STATUSFILE="/run/user/$UID/update-linux-common"

cd ~/linux-common || (printf "linux-common not found\n"; exit 1)

git fetch

HEADHASH=$(git rev-parse HEAD)
UPSTREAMHASH=$(git rev-parse master@{upstream})

if [ "$HEADHASH" != "$UPSTREAMHASH" ]
then
	printf "linux-common needs updating\n"
	touch ${STATUSFILE}

	if CMD_AVAILABLE notify-send; then
		notify-send \"linux-common needs updating\"
	fi
else
	rm -f ${STATUSFILE}
	printf "linux-common up to date\n"
fi
