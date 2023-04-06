#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

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
source ~/.git-completion.bash
source /usr/share/nvm/init-nvm.sh

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0232323" #black
    echo -en "\e]P82B2B2B" #darkgrey
    echo -en "\e]P1D75F5F" #darkred
    echo -en "\e]P9E33636" #red
    echo -en "\e]P287AF5F" #darkgreen
    echo -en "\e]PA98E34D" #green
    echo -en "\e]P3D7AF87" #brown
    echo -en "\e]PBFFD75F" #yellow
    echo -en "\e]P48787AF" #darkblue
    echo -en "\e]PC7373C9" #blue
    echo -en "\e]P5BD53A5" #darkmagenta
    echo -en "\e]PDD633B2" #magenta
    echo -en "\e]P65FAFAF" #darkcyan
    echo -en "\e]PE44C9C9" #cyan
    echo -en "\e]P7E5E5E5" #lightgrey
    echo -en "\e]PFFFFFFF" #white
    clear #for background artifacting
fi

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/programs/flutter/bin
