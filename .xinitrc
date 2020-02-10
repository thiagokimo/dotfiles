#!/usr/bin/env sh

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3
