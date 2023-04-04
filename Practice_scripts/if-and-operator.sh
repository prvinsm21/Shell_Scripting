#!/bin/bash

# Check OS and User

OS_TYPE=$(uname)
#USER_ID=$(UID)

if [[ ${OS_TYPE} == "Linux" ]]
then
    if [[ ${UID} -eq 0 ]]
    then    
        echo "User is Root and your OS is Linux."
    fi
fi