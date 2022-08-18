#!/bin/bash
# panel-music.sh - Music display
#
# A script that displays the song that is playing with the artist's name

if ! command -v playerctl &> /dev/null; then
	echo playerctl as not found
fi

stat=$(playerctl status -s 2>/dev/null)
artist="$(playerctl metadata artist -s)";
title=$(playerctl metadata title -s);
current="$artist - $title";

if [ "$stat" = "" ]; then
	echo
else
	echo "$play_pause ${current:0:40}"
fi
