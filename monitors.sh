#!/bin/bash
# Get connected monitors, only works for current two monitor setup

MONITORS=$(xrandr --query)
export MONITOR1=$(echo "$MONITORS" | grep 'DP-[0-9] connected' | awk '{ print $1 }')
export MONITOR2=$(echo "$MONITORS" | grep 'HDMI-[0-9] connected' | awk '{ print $1 }')

