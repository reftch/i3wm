#!/bin(sh

chosen=$(printf "Exit i3\nPower off\nRestart\nLock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
  "Exit i3") i3-msg exit ;; 
  "Power off") poweroff ;;
  "Restart") reboot ;;
  "Lock") i3lock -c 000000 ;;
  *) exit 1 ;;
esac  
