#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

DATE=$(date +%d-%m)
MONTH=$(date +"%b")
if [ "$MONTH" = "Dec" ]; then # If it's December set it to be Christmas-y
	PS1='\[\e[31m\]\u🎅\[\e[0;33m\]@ho-ho-h🧣me \[\e[0;36m\]\w\[\e[0m\]\n 🎁 '
elif [ "$DATE" = "31-10" ]; then # Halloween
	PS1='\[\e[31m\]\u\[\e[0;33m\]@\[\e[0;34m\]\h \[\e[0;36m\]\w\[\e[0m\]\n 🎃 '
elif [ "$DATE" = "01-11" ]; then # Fountain pen day
	PS1='\[\e[32m\]\u\[\e[0;33m\]@\[\e[0;34m\]\h \[\e[0;36m\]\w\[\e[0m\]\n 🖋️ '
else # normal
	PS1='\[\e[32m\]\u\[\e[0;33m\]@\[\e[0;34m\]\h \[\e[0;36m\]\w\[\e[0m\]\n λ '
fi

export EDITOR=hx
export PATH=/home/sasha/.local/bin:$PATH
export HISTCONTROL=ignoreboth:erasedups

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

if [ -f ~/.personal.sh ]; then
	. ~/.personal.sh
fi

complete -cf doas
