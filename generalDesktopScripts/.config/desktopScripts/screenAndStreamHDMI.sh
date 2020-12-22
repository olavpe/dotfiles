#!/bin/bash

# Path to the scripts
SCREEN_SCRIPT="extendScreenTV.sh"
AUDIO_SCRIPT="audioToHDMI.sh"

# Running
# When running 'pactl list short sinks' outputs 0 as HDMI sink
source "$SCREEN_SCRIPT"
source "$AUDIO_SCRIPT"

# Moving workspaces
exec i3-msg 'workspace 6 output $VGA $HDMI' &
exec i3-msg 'workspace 7 output $VGA $HDMI' &
exec i3-msg 'workspace 8 output $VGA $HDMI' &
exec i3-msg 'workspace 9 output $VGA $HDMI' &
exec i3-msg 'workspace 10 output $VGA $HDMI' &
# Moving MPV programs to the external monitor
exec i3-msg '[class="mpv"] move container to workspace 6' &
exec i3-msg '[class="firefox"] move container to workspace 6' &
