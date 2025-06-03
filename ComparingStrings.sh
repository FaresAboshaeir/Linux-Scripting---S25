#!/bin/bash
# Made by abos0008

#this will help me get the input from the user
read -p "Enter first string: " str1
read -p "Enter second string: " str2

#we have to compare strings here with match or no match
if [ "$str1" = "$str2" ]; then
  echo "Match"
else
  echo "No match"
fi
