#!/bin/bash

redshift=$(pidof redshift | wc -l);

if [ $redshift -eq 0 ]; then
	echo "NOSHFT";
else
	echo "RDSHFT";
fi
