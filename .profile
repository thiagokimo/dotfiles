#
# ~/.bashrc
#
# If not running interactively, don't do anything

export ANDROID_SDK_HOME="$HOME/Android/"
export ANDROID_STUDIO_HOME="$HOME/android-studio"
export PATH="$PATH:$HOME/.local/bin/:$ANDROID_SDK_HOME/Sdk/platform-tools/"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

