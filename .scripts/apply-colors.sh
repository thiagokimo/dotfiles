#!/bin/bash

while true; do
  if [[ ! $color15 ]]; then
    sh $HOME/.config/polybar/launch.sh
    exit 1
   fi
  sleep 0.1
done
