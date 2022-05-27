#!/bin/bash

MAX=5
EMAIL=abc@gmail.com
DISK=sda1 

#USE=$(df -h | grep $DISK | awk '{ print $5 }' | cut -d'%' -f1)
USE=$(df -h | grep 'sda1 ' | awk '{ print $5 }' | cut -d'%' -f1)

if [ $USE -gt $MAX ]; then
    echo "Percent used: $USE" 
    mail -s "Running out of disk space" $EMAIL
fi
