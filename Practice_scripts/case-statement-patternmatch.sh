#!/bin/bash
#
read -p "Enter either Y or N: " answer

#case ${answer} in
case ${answer,,} in
    #[yY] | [yY][eE][sS])
    #[y] | yes)
    [y]*)
        echo "You have entered YES"
        ;;
    [n]*)
        echo "You have entered NO"
        ;;
    *)
        echo "Invalid input. Please enter again"
        ;;
esac