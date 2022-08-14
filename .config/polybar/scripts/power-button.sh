#!/bin/sh

icon=""
profile=$(powerprofilesctl | grep '*' | awk '{print $2; exit}')

if [ "$profile" = "performance:" ]; then
  echo "%{FC02020}$icon%{F-}"
elif [ "$profile" = "balanced:" ]; then 
  echo "%{F20AA20}$icon%{F-}"
else
  echo "$icon"
fi
