#!/bin/bash

BASHPATH="$( cd "$(dirname "$0")" ; pwd -P )"

pushd $HOME/.config/systemd/user/
rm -f update-linux-common.*
popd

cd services
ln update-linux-common.service $HOME/.config/systemd/user/
ln update-linux-common.timer $HOME/.config/systemd/user/

systemctl --user daemon-reload
systemctl --user enable update-linux-common.timer
systemctl --user start update-linux-common.timer
