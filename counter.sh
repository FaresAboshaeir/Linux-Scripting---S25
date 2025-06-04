#!/bin/bash
#Made by Fares Aboshaeir

limit=${1:-10}
i=1

while [ $i -le $limit ]; do
    echo "Count: $i"
    ((i++))
done
