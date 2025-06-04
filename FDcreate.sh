#!/bin/bash
# Made by Fares Aboshaeir

dir_name="041087275"
file_name="abos0008.txt"

if [ -d "$dir_name" ]; then
    echo "Directory $dir_name already exists"
else
    mkdir "$dir_name"
    echo "Directory $dir_name created"
fi

if [ -f "$file_name" ]; then
    echo "File $file_name already exists"
else
    touch "$file_name"
    echo "File $file_name created"
fi
