#!/usr/bin/env bash

if [[ $(xrandr -q | grep 'DP-1-1 connected') ]]; then
    xrandr --output DP-1-1 --mode 3840x2160 --primary --output eDP-1 --off
fi

