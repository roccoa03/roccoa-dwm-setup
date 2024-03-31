#!/bin/sh 

# Questo script verifica che l'uscita principale di audio sia bluetooth o meno 
CONNECTED=" 󰂯 " 
DISCONNECTED=" 󰂲 "

if [ -z $( pactl get-default-sink | grep bluez ) ]; then
	echo $DISCONNECTED 
	exit
fi 
echo $CONNECTED 

