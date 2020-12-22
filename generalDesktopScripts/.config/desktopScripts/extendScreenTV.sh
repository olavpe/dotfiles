#!/bin/sh

# Checking if the VGA is connected through xrandr
VGA=$(xrandr | grep "VGA" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

if [ -n "$VGA" ]; then
    echo VGA is connected, but disconnecting it
    xrandr --output VGA-0 --off
fi

xrandr --output LVDS-0 --off \
       --output DP-1 --primary --mode 3440x1440 \
       --output HDMI-0 --auto --left-of DP-1
