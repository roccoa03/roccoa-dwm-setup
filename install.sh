#!/bin/bash 
#The following installation script is desined to work specifically under Debian linux. 

#Installing git to get code from github
sudo apt install -y git 

## Creating folder structure 
mkdir -p $HOME/.local/src/suckless 
mkdir -p $HOME/.local/script
mkdir -p $HOME/.config

cd roccoa-dwm-setup/
mv dwm-6.4/ dwmblocks/ dmwnu-5.2/ st/ slock-1.5/ $HOME/.local/src/suckless/
mv .config/* $HOME/.config
mv .xinitrc $HOME/ 
mv .dwm/ $HOME/ 

#Installing dependencies to compile dwm
sudo apt install -y make gcc libx11-dev libxft-dev libxinerama-dev xorg
