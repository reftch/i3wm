#!/bin/sh

sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

builtIn=$(xrandr | grep ' connected' | head -n1 | cut -d" " -f1) 
external=$(xrandr | grep ' connected' | tail -n1 | cut -d" " -f1)

resolutions=$(xrandr | grep -e '*+' -e ' +' | cut -c4-13)
resolutionBuiltIn=$(echo $resolutions | cut -c1-9)
resolutionExternal=$(echo $resolutions | cut -c10-19)

if [ $builtIn != $external ] 
then
  xrdb -load /etc/lightdm/external &
  xrandr --output $external --mode $resolutionExternal --primary --output $builtIn --off &
else
  xrdb -load /etc/lightdm/builtin & 
fi

