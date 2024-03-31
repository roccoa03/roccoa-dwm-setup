#!/bin/sh 
# GET VOLUME INFORMATIONS 
amixer get Master | grep -q off

if [ $? -eq 0 ]; then
	echo MUTED 
	exit
fi

amixer get Master | awk -F'[][]' 'END{ print $2 }' 
