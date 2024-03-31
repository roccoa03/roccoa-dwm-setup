#!/bin/sh 
#
NON_ZERO=$(brightnessctl get)

if [ $NON_ZERO -eq 1 ]; then 
	xsct 3500
	exit
fi


if [ $1 = "up" ]; then
	brightnessctl set 1%+ -q 
elif [ $1 = "down" ] && [ $NON_ZERO = "960" ]; then
	brightnessctl set 1 -q && xsct 3500
elif [ $1 = "down" ]; then 
	brightnessctl set 1%- -q 
fi
