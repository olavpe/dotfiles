#!/bin/sh

## Settings for 1920x1080 for ultrawide monitor
#xrandr --newmode "1920p"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
#xrandr --addmode DP-1 1920p
#
## Settings for 3440x1440 for ultrawide monitor
#xrandr --newmode "3440p"  419.50  3440 3696 4064 4688  1440 1443 1453 1493 -hsync +vsync
#xrandr --addmode DP-1 3440p
#
IN=$(xrandr | grep "LVDS" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
EXT=$(xrandr | grep "DP" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
HDMI=$(xrandr | grep "HDMI" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
VGA=$(xrandr | grep "VGA" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

if (xrandr | grep "$HDMI connected"); then
    echo HDMI is connected, but disconnecting it
    xrandr --output HDMI-0 --off
fi

if (xrandr | grep "$EXT disconnected" | grep "$HDMI disconnected" | grep "$VGA disconnected"); then
    echo No external monitor is connected\n\r
    xrandr --output LVDS-0 --auto
else
    echo External monitors detected\n\r
    # For BenQ screen without using laptop
    # xrandr --output LVDS-0 --off --output DP-1 --primary --mode 3440x1440
    # For BenQ screen and extra montifor without using laptop
    # xrandr --output LVDS-0 --off --output DP-1 --primary --mode 3440x1440 --output VGA-0 --auto --left-of DP-1
    # For Prediktor office monitor (using both laptop and external)
    # xrandr --output LVDS-0 --primary --auto --right-of DP-1 --auto
    # xrandr --output DP-1 --primary --auto --right-of LVDS-0 --auto
    # For home office at Lysaker
    xrandr --output LVDS-0 --off --output VGA-0 --primary --auto --output HDMI-0 --auto --right-of VGA-0
fi
