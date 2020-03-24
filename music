#!/bin/bash
# Get current song information and status (does not work with i3blocks)
# Bad json output formatting

mpc status |
awk '
{
	# paused -> red, playing -> green foreground
	PAUSED="\033[0;31m"
  	PLAYING="\033[0;32m"
}

FNR == 1 { SONG = $0 }

FNR == 2 {

	if ($1 == "[paused]") {
		printf PAUSED
	} else {
		printf PLAYING
	}

	print SONG,$2,$3,$4
}'


