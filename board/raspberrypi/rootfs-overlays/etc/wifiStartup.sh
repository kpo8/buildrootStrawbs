#!/bin/sh
#
# Get network data....
#
# See if we can get the wifi file is there
ping -c1 8.8.8.8 2> /dev/null && STATUS='Connected' || STATUS='Disconnected'
echo "$STATUS"

if [ "$STATUS" = "Connected" ]; then
	echo "Wifi is connected"
else
	#Runs until we get a connection
	WIFIWORKS=false
	while [ "$WIFIWORKS" = false ] 
	do
		echo "Wifi is unreachable"
		echo "Please provide networkId"
		read networkId;

		echo "Please provide password"
		read password;
		wpa_passphrase "$networkId" "$password" | tee /etc/wpa_supplicant.conf
		wpa_supplicant -B -c /etc/wpa_supplicant.conf -i wlan0
		dhclient wlan0
		ping -c1 8.8.8.8 2> /dev/null && CHECK='Connected' || CHECK='Disconnected'
		echo "$CHECK"

		if [ "$CHECK" = "Connected" ]; then
	        	$WIFIWORKS=true;
		fi
	done
fi
