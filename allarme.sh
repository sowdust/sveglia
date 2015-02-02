#!/bin/bash

intervallo=$(( $(date --date="$1" +%s) - $(date +%s) ))   
echo Allarme impostato: $(date --date="$1" +"%a %d %b alle %k:%M").
sleep $intervallo
echo Buon giorno : \)
#while true; do
	  alsaplayer ~/alarm-clock/alarm.mp3
#	    sleep 1
#	done
