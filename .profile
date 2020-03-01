#!/bin/bash

[ -f ~/.path ] && . ~/.path

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -la --color=auto'
PS1='[\u@\h \W]\$ '

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# keyboard
setxkbmap -layout us -variant intl
