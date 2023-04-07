#!/bin/bash

read -p "Please enter the name of the Process to be quried: " NAME

N=`ps -aux | grep $NAME | grep -v grep | wc -l`

if [ $N -le 0 ]; then
	echo "The Process name is not running! "
fi


