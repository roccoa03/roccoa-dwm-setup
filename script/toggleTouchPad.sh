#! /bin/sh 
state=$(xinput list-props 11 | grep 188 | grep -o [01] | sed -n 2p) 
if [ "$state" -eq "0" ]; then
	xinput set-prop 11 188 1 && notify-send "touchpad enabled" 
else
	xinput set-prop 11 188 0 && notify-send "touchpad disabled"

fi


