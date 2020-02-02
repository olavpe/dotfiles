#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

j4-dmenu-desktop --dmenu="dmenu -i -nb '$color0' -nf '$color1' -sb '$color0' -sf '$color4'"
