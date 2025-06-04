#!/bin/bash
#Made by Fares Aboshaeir
#case.sh script

function DISTRO() {
    DISTROS=$(hostnamectl | grep "Operating" | awk '{print $3, $4, $5}')
    echo "OS Distribution is: $DISTROS"
}

clear

while true; do
    echo " "
    echo "Choose an option:"
    read -p "(I)nfo, (C)lear, (D)ate, (Q)uit: " INPUT

    case $INPUT in
        [Ii]) 'I'
            echo "Info about OS:"
            DISTRO
            ;;
        [Cc]) 'C'
            clear
            ;;
        [Dd]) 'D'
            echo "Today's date and time:"
            date
            ;;
        [Qq]) 'Q'
            echo "Quitting..."
            break
            ;;
        *)
            echo "Wrong Input. Try again"
            ;;
    esac
done
