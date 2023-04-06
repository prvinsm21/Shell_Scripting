#!/bin/bash

while [[ $answer != "yes" ]]
do
    read -p "Please enter the value: " answer
done

echo $answer