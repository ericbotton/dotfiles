#!/bin/bash

# options to be displayed
option0="lock"
option1="suspend"
option2="redshift toggle"
option3="scheduled suspend (30min)"
option4="scheduled suspend (60min)"
option5="scheduled suspend (180min)"
option6="logout"
option7="reboot"
option8="shutdown"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8"

chosen="$(echo -e "$options" | rofi -lines 9 -dmenu -p "power")"
case $chosen in
	$option0)
		slock;;
	$option1)
		systemctl suspend && slock;;
	$option2)
		bash ~/.config/polybar/scripts/redshift-toggle.sh;;
    $option3)
		sleep 30m && systemctl suspend && slock;;
    $option4)
		sleep 60m && systemctl suspend && slock;;
	$option5)
		sleep 180m && systemctl suspend && slock;;
	$option6)
        i3-msg exit;;
    $option7)
        systemctl reboot;;
	$option8)
        systemctl poweroff;;
esac
