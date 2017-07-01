RESET="\[\033[0m\]"
GREEN="\[\033[1;32m\]"
RED="\[\033[31;1m\]"
BLUE="\[\033[1;34m\]"

SELECT="if [ \$? != 0 ]; then echo \"${RED}\"; fi"

PS1="${GREEN}\u@\h ${BLUE}\W \`${SELECT}\`\\$ ${RESET}"
