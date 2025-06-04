#!/bin/bash
# Made by Fares Aboshaeir

read -p "Enter the number of electricity units consumed: " units

total_cost=0

# the if here calculates bill based on given conditions
if [ "$units" -le 50 ]; then
    total_cost=$((units * 1))
elif [ "$units" -le 150 ]; then
    total_cost=$(((50 * 1) + ((units - 50) * 2)))
else
    total_cost=$(((50 * 1) + (100 * 2) + ((units - 150) * 3)))
fi

# it will give us total bill amount
echo "Total Electricity Bill: CAD $total_cost"
