#!/usr/bin/env sh

# Load main configs
[ -f ~/.profile ] && . ~/.profile

# Force rxvt stuff
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3 
