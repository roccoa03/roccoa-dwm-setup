#!/bin/sh 
# NOTE: WRITING THIS SCRIPT 0 MEANS TRUE; 1 MEANS FALSE. [UNIX STYLE]
#CHECK IF THERE IS AN APPLICATION FULLSCREEN

root_geo="$(xwininfo -root | grep geometry)"

active_window=$(xdotool getactivewindow)
if [ $? -eq 0 ]; then

	if [ "$(xwininfo -id $active_window | grep geometry)" = "$root_geo" ]; then
		FULLSCREEN=0
	else 
		FULLSCREEN=1
	fi

else 
	FULLSCREEN=1
fi

#CHECK IF AUDIO IS PLAYING 
pactl list short sinks | grep -q RUNNING
audio_running=$? 

# funziona meglio cosi.
#echo $audio_running


#CHECK IF CAFFEINE MODE IS ACTIVE 
CAFFEINE="$(cat ~/.local/script/caffeine/caffeine.dat)" 

if [ $CAFFEINE = "false" ] && [ $FULLSCREEN -eq 1 ]; then
   
   #echo "fullscreen is not a problem"
	if [ $audio_running = 0 ]; then 
		slock | xset dpms force off
	elif [ $audio_running = 1 ]; then 
	#	slock | xset dmps force off && 
		systemctl suspend
	fi
fi
