#!/bin/sh

speed=$(sensors | grep fan1 | awk '{print $2; exit}')

if [ "$speed" != "" ]; then
    speed_round=$(echo "$speed" | bc -l | LANG=C xargs printf "%d ")
    echo "$speed_round"
else
   echo "#"
fi

