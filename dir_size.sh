#!/bin/bash

echo "Enter the directory: "

read x

y=$(du -sh "$x")

echo "Total disk space is: $y"

