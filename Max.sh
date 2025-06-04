#!/bin/bash
# Made by Fares Aboshaeir

echo "Enter 5 numbers: "
read num1
read num2
read num3
read num4
read num5

# assume first number is the max
max=$num1

# it compare with other numbers
if [ "$num2" -gt "$max" ]; then
    max=$num2
fi

if [ "$num3" -gt "$max" ]; then
    max=$num3
fi

if [ "$num4" -gt "$max" ]; then
    max=$num4
fi

if [ "$num5" -gt "$max" ]; then
    max=$num5
fi

echo "The maximum number is: $max"
