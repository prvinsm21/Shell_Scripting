#!/bin/bash

pid=$(ps -eo %cpu,pid,command --sort -%cpu | head -n 2 | awk '{print $1 " " $2 " " $3}')

if [[ -n $pid ]];then
        kcpu=$(echo $pid | awk '{print $4}')
        kpid=$(echo $pid | awk '{print $5}')
        TOPNAME=$(echo $pid | awk '{print $6}')
        TopProcName=$(ps -p $kpid -o comm=)
        ift=$(echo $kcpu'>'"10.0" | bc -l)
        if [ $ift -eq "1" ] && [ $TopProcName == "firefox" ]; then
                echo "kpid" = $kpid
        fi

fi
echo $kcpu
echo $kpid
echo $ift
echo $TOPNAME
echo $TopProcName
~                                                                                                                                                    
~                                                                                                                                                    
~                                                                                                                                                    
~                                                                                                                                                    
~                                                                                                                                                    
~                                                                                                                                                    
~                                                                                                                                                    
~                   
