#!/bin/bash

read -p "Please enter the PID to be queried: " P
n=`ps -aux | awk '$2~/^'$P'$/{print $0}' | wc -l`

if [ $n -eq 0 ]; then
    echo "This PID does not exists! "
    exist
fi