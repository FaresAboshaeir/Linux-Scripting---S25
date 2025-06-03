#!/bin/bash
# Made by abos0008

#this will prompt the user for input
read -p "Enter electricity units consumed: " units

#make sure to validate if the integer is positive
if ! [[ "$units" =~ ^[0-9]+$ ]] || [ "$units" -le 0 ]; then
  echo "Error: Enter a positive integer for units."
  exit 1
fi

units=$((units))
bill=0

#this is going to be calculating the bill
if [ "$units" -le 50 ]; then
  bill=$((units * 1))
elif [ "$units" -le 100 ]; then
  bill=$(((50 * 1) + ((units - 50) * 2)))
elif [ "$units" -le 150 ]; then
  bill=$(((50 * 1) + (50 * 2) + ((units - 100) * 3)))
else
  bill=$(((50 * 1) + (50 * 2) + (50 * 3) + ((units - 150) * 4)))
fi

echo "Total electricity bill: CAD $bill"
