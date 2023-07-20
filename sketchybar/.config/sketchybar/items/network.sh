#!/usr/bin/env bash

source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

# icon.font="$NERD_FONT:Bold:16.0"
network_down=(
	  y_offset=-7
	  label.font="$FONT:Heavy:10"
	  label.color="$TEXT"
	  icon="$NETWORK_DOWN"
	  icon.font="$NERD_FONT:Regular:16.0"
	  icon.color="$GREEN"
	  icon.highlight_color="$BLUE"
	  update_freq=1
)
echo $NERD_FONT

# icon.font="$NERD_FONT:Bold:16.0"
network_up=(
	background.padding_right=-70
	y_offset=7
	label.font="$FONT:Heavy:10"
	label.color="$TEXT"
	icon="$NETWORK_UP"
	icon.font="$NERD_FONT:Regular:16.0"
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=5
	script="$PLUGIN_DIR/network.sh"
)

sketchybar 	--add item network.down right 						\
						--set network.down "${network_down[@]}" 	\
						--add item network.up right 							\
						--set network.up "${network_up[@]}"
