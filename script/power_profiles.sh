#!/bin/bash 
declare -A  menu  

menu=(
  [power-saver]="powerprofilesctl set power-saver"
  [balanced]="powerprofilesctl set balanced"
  [performance]="powerprofilesctl set performance"
)
SCELTA=$(printf '%s\n' ${!menu[@]} | sort | dmenu -i -p "$(powerprofilesctl get)*")      

if [ -z $SCELTA ];then
	exit
fi

echo ${menu[$SCELTA]} | bash 
