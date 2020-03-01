#!/bin/bash

# Load path config file
[ -f ~/.path ] && . ~/.path

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -la --color=auto'

# Name on the terminal
PS1='[\u@\h \W]\$ '

# Alias to manage the dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Startx on login
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# keyboard
setxkbmap -layout us -variant intl
