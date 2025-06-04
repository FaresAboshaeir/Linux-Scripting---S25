#!/bin/bash
#Made by Fares Aboshaeir

read -p "Enter the number for the table: " num
read -p "Enter the range for the table: " range

echo "***************************"
echo "This is $num time table"
echo "***************************"

#loop to generate the tables
for ((i=1; i<=range; i++))
do
    echo "$num X $i = $((num * i)) "
done
