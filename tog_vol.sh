#!/bin/bash
# toggle volumte mute

# if [[ $(pamixer --get-mute) == "true" ]]; then
	# pamixer -u
# else
	# pamixer -m
# fi

paxmier --toggle
pkill -SIGRTMIN+9 i3blocks

