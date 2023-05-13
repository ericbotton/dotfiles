#!/bin/bash

proton_status=$(protonvpn-cli s);
current_status=$(protonvpn-cli s | wc -l);
current_server=$(protonvpn-cli s | awk '/Server:/ {print "VPN "$2}');

if [ $current_status -gt 2 ]; then
	echo $current_server;
else
	echo "%{F#bf616a}NO VPN";
fi
