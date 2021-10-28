#!/bin/bash

#                         
#      
STATUS=`cat /sys/class/power_supply/BAT1/status`
PERCENTAGE=`cat /sys/class/power_supply/BAT1/capacity`

if [ "$STATUS" == "Full" ] ; then
	OUTPUT=""
elif [ "$STATUS" == "Charging" ] ; then
	OUTPUT=""
elif [ "$STATUS" = "Discharging" ] ; then 
	OUTPUT=""
fi

OUTPUT="$PERCENTAGE$OUTPUT"

if [ "$PERCENTAGE" -eq "100" ] ; then
	OUTPUT="$OUTPUT " 
elif [ "$PERCENTAGE" -gt "75" ] ;then
	OUTPUT="$OUTPUT " 
elif [ "$PERCENTAGE" -gt "50" ] ;then
	OUTPUT="$OUTPUT " 
elif [ "$PERCENTAGE" -gt "25" ] ;then
	OUTPUT="$OUTPUT " 
else
	OUTPUT="$OUTPUT " 
fi

echo "$OUTPUT"

