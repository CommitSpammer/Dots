#!/bin/bash

# infinite history
HISTSIZE= HISTFILESIZE= 

# disable ctrl-s and ctrl-q
stty -ixon

# cd into any dir by typing just the dir name 
shopt -s autocd

# ccache
export PATH="/usr/lib/ccache/bin${PATH:+:}$PATH"
export CCACHE_DIR="/var/cache/ccache"

# load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

set -o vi
export EDITOR='vi'
export VISUAL='vi'
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export PS1="  ⛧  𝘎𝘭𝘰𝘳𝘪𝘢 𝘊𝘢𝘶𝘴𝘢 𝘚𝘢𝘵𝘢𝘯𝘪 ⛧̴  "
#LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
LS_COLORS='di=0:ln=31:so=37:pi=37:ex=1;31:bd=0;1:cd=0;1:su=1;31:sg=1;31:tw=1;0:ow=1;0'
export LS_COLORS
