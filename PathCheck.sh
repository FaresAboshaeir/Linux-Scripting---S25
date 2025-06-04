#!/bin/bash
# Made by Fares Aboshaeir

echo "Enter a path:"
read path

if [ -e "$path" ]; then
    if [ -f "$path" ]; then
        echo "This path leads to a file."
    elif [ -d "$path" ]; then
        echo "This path leads to a directory."
    else
        echo "The path exists but is neither a file nor a directory."
    fi
else
    echo "The path is invalid."
fi
