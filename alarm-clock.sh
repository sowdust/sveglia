#!/bin/bash

printf "A che ora (giorno) ? "
read data

allarme=$(date --date="$data" +%s)
adesso=$(date +%s)

if [ "$adesso" -gt "$allarme" ]
then
	echo errore! Allarme impostato per $(date --date="$data") ma adesso è $(date)
	exit
fi
echo impostando allarme per  $(date --date="$data") 
nohup sh ~/alarm-clock/allarme.sh $data > stdout &
