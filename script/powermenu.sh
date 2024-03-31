#!/bin/bash  
# declarative array  
declare -A menu
menu=( 
  [Suspend]="systemctl suspend" 
  [Poweroff]="systemctl poweroff"  
  [Reboot]="systemctl reboot"
  [Logout]=" pkill -KILL -u $USER"  
  [Lock]="slock | xset dmps force off"  
  [Cancel]="exit" 
) 

SCELTA=$(printf '%s\n' ${!menu[@]} | sort |dmenu -i -p "Syetem options:") 

#TEST IF THE LENGTH OF THE STRING IS ZERO
if [ -z $SCELTA ]; then
	exit
fi
echo ${menu[$SCELTA]} | bash   
exit 0
#-l ${#menu[@]}
