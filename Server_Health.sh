#!/bin/bash

function menu(){
clear
TIME=1
echo " "
echo $0
echo " "
echo "Choose an option below:
    1 - Desktop processor
    2 - System Kernel
    3 - Install softwares
    4 - Operation system version
    5 - Desktop memory
    6 - Serial number
    7 - System IP
    0 - Exit"
echo " "
echo -n "Selected option is: "
read option
case $option in
    1)  
        function processor(){
            CPU_INFO=`cat /proc/cpuinfo | grep -i "^model name" | cut -d ":" -f2 | sed -n '1p'`
            echo "CPU Model : $CPU_INFO"
            sleep $TIME
        }
        processor
        read -n 1 -p "<Enter> for main menu"
    


esac
}
menu