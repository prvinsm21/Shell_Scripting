#!/bin/bash

#
#Installation of Jenkins on AWS EC2 instance
#

set -x # Turn DEBUG mode ON



if [[ $EUID -ne 0 ]]; then
	echo "This script must be ran as ROOT" 1>&2
	exit 1
fi


set +x # Turn DEBUG mode OFF
