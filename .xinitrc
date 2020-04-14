#!/usr/bin/env sh

# Load main configs
[ -f ~/.xprofile ] && . ~/.xprofile

# Force rxvt stuff
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3
