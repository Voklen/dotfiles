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
	PS1='\[\e[32m\]\u\[\e[0;33m\]@\[\e[0;34m\]\h \[\e[0;36m\]\w\[\e[0m\] λ '
fi

export EDITOR=hx
export MOZ_ENABLE_WAYLAND=1
export MOZBUILD_STATE_PATH=/home/sasha/Programming/mozbuild
export PATH=/home/sasha/.local/bin:$PATH
export GTK_THEME=Adwaita:dark
export ANDROID_HOME=/home/sasha/programs/Android/Sdk

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi
if [ -f ~/.aliases ]; then
	source ~/.git-completion.bash
else
	curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
fi

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/programs/flutter/bin
