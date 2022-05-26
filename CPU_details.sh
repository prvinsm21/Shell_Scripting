#!/bin/bash

MAX=95.0
EMAIL=prvinsm21@gmail.com

USE="$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)*100} END {print usage ""}')"

if [ $USE -gt $MAX ]; then
	echo "Percent used: $USE" | mail -s "Running out of CPU power" $EMAIL
fi