#!/bin/bash

# Load path config file
[ -f ~/.path ] && . ~/.path

# Load aliases
[ -f ~/.aliases ] && . ~/.aliases

# Load tokens
[ -f ~/.tokens ] && . ~/.tokens

[[ $- != *i* ]] && return

# Alias to manage the dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Startx on login
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# keyboard
setxkbmap -layout us -variant intl

# Source colors generated by wal.
source "${HOME}/.cache/wal/colors.sh"
