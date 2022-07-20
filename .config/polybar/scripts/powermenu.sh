#!/bin(sh

chosen=$(printf "Power off\nRestart\nLogout\nLock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in 
  "Power Off") poweroff ;;
  "Restart") reboot ;;
  "Logout") i3-msg exit ;;
  "Lock") i3lock -c 000000 ;;
  *) exit 1 ;;
esac  
