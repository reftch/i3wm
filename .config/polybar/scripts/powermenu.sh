#!/bin(sh

chosen=$(printf "Logout\nPower off\nRestart\nLock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
  "Logout") i3-msg exit ;; 
  "Power off") poweroff ;;
  "Restart") reboot ;;
  "Lock") i3lock -c 000000 ;;
  *) exit 1 ;;
esac  
