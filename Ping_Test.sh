#!/bin/bash
##
for i in 192.168.1.{180..183}
do
    ping -c 2 $i >> /dev/null
if [ $? -eq 0 ]
then
    echo "$i is UP"
else
    echo "$i is DOWN"
fi
done
