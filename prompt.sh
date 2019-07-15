#!/bin/bash
# From Luke Smith prompt script

[ $(echo -e "No\nYes" | dmenu -i -p "$1") == "Yes" ] && $2

