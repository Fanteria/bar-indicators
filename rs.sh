#!/bin/bash

#echo ": $1"
PID=`ps -aux | grep "[r]edshift" | awk '{print $2}'`
if [ "$1" == "1" ] ; then
    if [ -z "$PID" ] ; then
        echo "R" 
        nohup redshift
    else
        echo "K"
        kill "$PID"
    fi
else
    if [ -z "$PID" ] ; then
        echo " $PID |"
    else
        echo " $PID |"
    fi
fi
