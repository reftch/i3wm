#!/bin(sh

chosen=$(printf "Lock\nLogout\nRestart\nPower off\n" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
  "Lock") i3lock -c 000000 ;;
  "Logout") i3-msg exit ;; 
  "Restart") reboot ;;
  "Power off") poweroff ;;
  *) exit 1 ;;
esac  
