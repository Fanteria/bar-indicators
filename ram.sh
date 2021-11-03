#!/bin/bash

MEM=`head -3 /proc/meminfo | awk '{print $2}'`
OUT=""
while IFS= read -r line
do
	OUT="$(($line / 1048576)).$((($line % 1048576) / 100000))/${OUT}" 
done < <(printf '%s\n' "$MEM")

echo "${OUT::-1} "
