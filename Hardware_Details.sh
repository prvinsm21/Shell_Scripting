#!/bin/bash
#Hardware details
TIME=1

function processador() {
    CPU_INFO=`cat /proc/cpuinfo | grep -i "^model name" | cut -d ":" -f2 | sed -n '1p'`
    echo "CPU Model: $CPU_INFO"
    sleep $TIME
}
processador

function kernel(){
    KERNEL_VERSION_UBUNTU=`uname -r`
    KERNEL_VERSION_CENTOS=`uname -r`
    if [ -f /etc/lsb-release ]
    then
        echo "Kernel version: $KERNEL_VERSION_UBUNTU"
    else
        echo "Kernel version: $KERNEL_VERSION_CENTOS"
    fi
}
kernel
