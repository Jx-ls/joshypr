#!/bin/bash
while true
do
	battery=`acpi -b | grep -P -o '[0-9]+(?=%)'`
	charging=`acpi -b | grep -P -o 'Charging'`
	if [ $battery -le 20 ] && [ -n $charging ] && [ "$charging" != "Charging" ]; then
		notify-send "Low battery!!" "pls plug in the charger"
	fi

	sleep 30
done
