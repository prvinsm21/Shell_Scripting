#!/bin/bash

read -p "Please enter your name: " NAME

NAME=${NAME:-World} # If Parameter not passed, It will take World as default

echo "Hello ${NAME^}" # Here ^ represent 1st Letter to be in CAPS
