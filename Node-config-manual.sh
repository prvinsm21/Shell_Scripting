#!/bin/bash

# Update the repository
sudo apt update -y
if [[ $? !=0  ]]
then
    echo "[033\0;31 Update got failed. Please run the script again.]"
fi

# Create and add user
read -p "Please enter username: " NAME
sudo useradd -m $NAME
echo -e '$NAME\n$NAME' | sudo passwd $NAME

