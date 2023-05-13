#!/bin/bash

# options to be displyed
option0="mobile [eDP-1]"
option1="docked [DP-2]"
option2="docked [DP-2 + DP-1]"
option3="rotate DP-2 vertical"
option4="rotate DP-2 normal"
option5="reset wallpaper"

# Variable passed to rofi
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5"

selected="$(echo -e "$options" | rofi -lines 6 -dmenu -p "display config")"
case $selected in
	$option0)
		autorandr mobile && polybar_restart && feh --bg-scale ~/Pictures/walls/BR2049_LA_wallpaper.png;;
	$option1)
		autorandr docked && polybar_restart && feh --bg-scale ~/Pictures/walls/BR2049_LA_wallpaper.png;;
	$option2)
		autorandr docked_dual && polybar_restart && feh --bg-scale ~/Pictures/walls/BR2049_LA_wallpaper.png;;
	$option3)
		xrandr --output DP-2 --rotate left;;
	$option4)
		xrandr --output DP-2 --rotate normal;;
	$option5)
		feh --bg-scale ~/Pictures/walls/BR2049_LA_wallpaper.png;;
esac
