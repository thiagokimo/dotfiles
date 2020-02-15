#
# ~/.bashrc
#
# If not running interactively, don't do anything

export PATH="$PATH:$HOME/.local/bin/"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

