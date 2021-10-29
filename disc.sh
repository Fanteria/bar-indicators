#!/bin/bash

MEM=`df -h | grep /home`
FULL=`echo "$MEM" | awk '{print $2}'`
FREE=`echo "$MEM" | awk '{print $3}'`

echo "${FREE::-1}/${FULL::-1} "
