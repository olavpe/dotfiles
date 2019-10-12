#!/bin/sh

EXT=$(xrandr | grep "HDMI" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

if (xrandr | grep "$EXT connected"); then
    echo External monitor is disconnected\n\r
    xrandr --output HDMI-0 --auto --left-of DP-1 
else
    echo External HDMI screen not detected\n\r
fi

##Starting firefox with both patriots.com and gamepass
#firefox patriots.com
#firefox --new-tab nflgamepass.com


