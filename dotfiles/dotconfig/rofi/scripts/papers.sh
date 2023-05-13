#!/bin/bash

PAPER=$(fd -e pdf --base-directory ~/repos/university/papers/ | rofi -dmenu -i -p "")

if [ -z "${PAPER}" ];
then
	exit 1
else
	zathura ~/repos/university/papers/"${PAPER}"
fi
