#!/bin/bash

while true; do
  if [[ ! $color15 ]]; then
    wal -i $WALLPAPERS_HOME
    sh $HOME/.config/polybar/launch.sh
    cp $HOME/.cache/wal/colors-wal.vim $HOME/.vim/colors/colors-wal.vim
    exit 1
   fi
  sleep 0.1
done
