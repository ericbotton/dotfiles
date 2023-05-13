#!/bin/bash

redshift=$(pidof redshift | wc -l);

echo $redshift

if [ $redshift -eq 0 ]; then
	redshift -t 6200:2600 -l 52:13;
else
	pkill redshift;
fi
