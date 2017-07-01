HISTCONTROL=ignoreboth
HISTSIZE=5000
HISTFILESIZE=5000
HISTIGNORE="&:exit:clear:pwd:?:??"	#ignore one and two char commands

shopt -s histappend
shopt -s globstar
shopt -s cmdhist
shopt -s cdspell
shopt -s checkwinsize

source ~/.bin/setupprompt.sh
export PATH=$PATH:~/.bin

alias sudo='sudo '	#make aliases work with sudo
alias ls='ls --color=auto'
alias la='ls -thor'
alias dd='dd status=progress'
alias open='run xdg-open'
alias grep='grep -n --color=auto'
alias find='find 2>/dev/null'	#discard permission errors

function fuck () {
	TF_PREVIOUS=$(fc -ln -1);
	TF_PYTHONIOENCODING=$PYTHONIOENCODING;
	export TF_ALIAS=fuck;
	export TF_SHELL_ALIASES=$(alias);
	export PYTHONIOENCODING=utf-8;
	TF_CMD=$(
	    thefuck $TF_PREVIOUS THEFUCK_ARGUMENT_PLACEHOLDER $@
	) && eval $TF_CMD;
	export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
	history -s $TF_CMD;
}

function extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xvjf $1    ;;
			*.tar.gz)    tar xvzf $1    ;;
			*.bz2)       bunzip2 $1     ;;
			*.rar)       unrar x $1     ;;
			*.gz)        gunzip $1      ;;
			*.tar)       tar xvf $1     ;;
			*.tbz2)      tar xvjf $1    ;;
			*.tgz)       tar xvzf $1    ;;
			*.zip)       unzip $1       ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1        ;;
			*)           echo "don't know how to extract '$1'..." ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}

#go up x directories
up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

#upload file to transfer.sh
function transfer { curl --upload-file $1 https://transfer.sh/$1; echo; }

#start program and detatch from shell
function run { $@ > /dev/null 2>&1 & disown > /dev/null 2>&1; }

#enable colors in less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'