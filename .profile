#!/bin/bash

# Load path config file
[ -f ~/.path ] && . ~/.path

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -la --color=auto'

# Git aliases
alias gp='git push'
alias gc='git commit'
alias gl='git log'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gst='git status'

# Alias to manage the dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Name on the terminal
PS1='[\u@\h \W]\$ '

# Startx on login
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# keyboard
setxkbmap -layout us -variant intl
