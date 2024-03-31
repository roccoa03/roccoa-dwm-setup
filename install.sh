#!/bin/bash 
#The following installation script is desined to work specifically under Debian linux. 

## Creating folder structure 
mkdir -p $HOME/.local/src/suckless  
mkdir -p $HOME/.local/script
mkdir -p $HOME/.config

cd roccoa-dwm-setup/
mv -r dwm-6.4/ dwmblocks/ dmwnu-5.2/ st/ slock-1.5/ $HOME/.local/src/suckless/
mv -r .config/* $HOME/.config
mv .xinitrc $HOME/ 
mv -r .dwm/ $HOME/  
mv -r script/* $HOME/.local/script/


#Installing dependencies to compile dwm
sudo apt install -y make gcc libx11-dev libxft-dev libxinerama-dev xorg 


# Installing software required by script folder and .config 
sudo apt install -y powerprofilesctl dunst sxhkd sxiv pipx mpv flameshot pipewire 
sudo apt install -y brightnessctl 

pipx ensurepath
pipx install pywal




