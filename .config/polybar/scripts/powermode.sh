#!/bin/sh

chosen=$(printf "Performance\nBalanced\nPower saver\n" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
  "Performance") powerprofilesctl set performance ;;
  "Balanced") powerprofilesctl set balanced ;; 
  "Power saver") powerprofilesctl set power-saver ;;
  *) exit 1 ;;
esac  
