#!/bin/bash

# test if command available
alias CMD_AVAILABLE='command -v > /dev/null 2>&1'

# enable bash completion in interactive shells
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		source /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		source /etc/bash_completion
	fi
fi

# source all files in ~/.bash
for file in $(find -L ~/.bash -name '*.sh' -type f); do
	source $file;
done
