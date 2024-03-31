#!/bin/bash 

#CHARGING/DISCHARGING 
if [ "$(cat /sys/class/power_supply/BAT1/status)" = "Discharging" ]; then
	STATE="-"
elif [ "$(cat /sys/class/power_supply/BAT1/status)" = "Charging" ]; then
	STATE="+"
else 
	STATE="o"
fi


PERC="$(cat /sys/class/power_supply/BAT1/capacity)%"  
echo "$PERC $STATE"
