#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

MONTH=`date +"%b"`
if [ $MONTH = "Dec" ];
then # If it's December set it to be Christmas-y
	PS1='\[\e[31m\]\u🎅\[\e[0;33m\]@ho-ho-h🧣me \[\e[0;36m\]\w\[\e[0m\] 🎁 '
else # normal
	PS1='\[\e[32m\]\u\[\e[33m\]@\[\e[34m\]\h \[\e[36m\]\w\[\e[0m\] λ '
fi

export EDITOR=hx
export PATH=/home/sasha/.local/bin:$PATH
export GTK_THEME=Adwaita:dark
export ANDROID_HOME=/home/sasha/Programs/Android/Sdk

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

complete -F _command doas

export GOBIN="/home/sasha/Programs/Go"
export PATH=$PATH:$(go env GOBIN):$(go env GOPATH)/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/Programs/flutter/bin
