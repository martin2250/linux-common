#!/bin/bash

BASHPATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir -p $HOME/.config/systemd/user

(cd $HOME/.config/systemd/user && rm -f check-linux-common.*)

systemctl --user link services/check-linux-common.service
systemctl --user link services/check-linux-common.timer

systemctl --user daemon-reload
systemctl --user enable check-linux-common.timer
systemctl --user start check-linux-common.timer
