#! /bin/sh

if [[ $(xrandr -q | grep "HDMI-1 connected") ]]; then
  sh $SCREENLAYOUT_HOME/home.sh
  bspc monitor eDP-1 -d I II III IV V
  bspc monitor HDMI-1 -d VI VII VIII IX X
elif [[ $(xrandr -q | grep -wv "eDP-1 connected" | grep "DP-1 connected") ]]; then
  sh $SCREENLAYOUT_HOME/office.sh
  bspc monitor eDP-1 -d I II III IV V
  bspc monitor DP-1 -d VI VII VIII IX X
else
  bspc monitor eDP-1 -d I II III IV V VI VII VIII IX X
fi

