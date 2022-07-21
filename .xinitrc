#!/bin/sh

sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

sxhkd &
picom &
if [[ $(xrandr -q | grep 'DP-1-1 connected') ]]; then
    xrdb -load ~/.config/X11/external &
    xrandr --output DP-1-1 --primary --output eDP-1 --off &
else
    xrdb -load ~/.config/X11/builtin &
fi

nitrogen --restore &

exec i3
