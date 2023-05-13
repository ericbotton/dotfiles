#!/bin/bash
#

ACTIVE=$(cat currentcourse/info.yaml | shyaml get-value short | cat)

if [ $ACTIVE == 'KOCA' ]; then
	echo "T-"$(expr '(' $(date -d 2023/02/3 +%s) - $(date +%s) + 86399 ')' / 86400)"d";
else
	echo ""
fi

