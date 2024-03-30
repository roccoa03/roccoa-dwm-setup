#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script 


./etc/X11/Xsession  
export PATH="$PATH:/home/roccoa/.local/bin" 
feh --bg-fill --no-fehbg $HOME/.config/wall.png 
sxhkd &
dwmblocks &
compton --backend glx --vsync  opengl-swc &
dunst & 
xrdb -merge ~/.Xresources
pipewire &
pipewire-pulse & 
thunar --daemon & 
xclip & 
#
#IN ORDER TO DISPLAY GNOME PROMPT SCREEN YOU NEED TO ACTIVATE gnome-keyring daemon
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 & 
exec dbus-launch --sh-syntax --exit-with-session ~/.dwm/start

