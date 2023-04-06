#!/bin/bash
#
action=${1}
#action=${1,,} # This will take input argument as small eventhough input passed in Capital
# Start, Stop, Restart, Reload

case ${action} in
    start | START)
    echo "Going to Start"
    ;;
    stop | STOP)
    echo "Going to Stop"
    ;;
    *)
    echo "Please enter the cmd line args."
esac