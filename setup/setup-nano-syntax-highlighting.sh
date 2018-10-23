#!/bin/bash

git clone https://github.com/scopatz/nanorc.git ~/.nano

cat >> ~/.nanorc <<EOL
include ~/.nano/*.nanorc
set tabsize 4
set autoindent
set linenumbers
set smarthome
set smooth
set nowrap
EOL
