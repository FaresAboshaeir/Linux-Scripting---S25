#!/bin/bash
# Check user credential
# Made by Fares Aboshaeir

function START-BANNER() {
    echo "****************"
    echo "Welcome"
    echo "This program verifies login credentials"
    echo "Usage: ./func.sh <username> <password>"
    echo "It uses positional parameters"
    echo "****************"
}

function END-BANNER() {
    echo "****************"
    echo "GOOD BYE"
    echo "****************"
}

START-BANNER

USERNAME=$1
PASSWORD=$2

if [[ $USERNAME = "bob" && $PASSWORD = "user1" ]]; then
    echo "You are logged in as Bob."
elif [[ $USERNAME = "alice" && $PASSWORD = "user2" ]]; then
    echo "You are logged in as Alice."
elif [[ $USERNAME = "admin" && $PASSWORD = "user3" ]]; then
    echo "You are logged in as admin."
else
    echo "Incorrect Username or Password"
fi

END-BANNER

#read -p "Enter Username: " USERNAME

#if [ "$USERNAME" = "bob" ]; then
 #   read -sp "Enter Password: " PASSWORD
  #  echo
   # if [ "$PASSWORD" = "secure123" ]; then
    #    echo "User authenticated"
    #else
     #   echo "Invalid password"
   # fi
#else
 #   echo "Invalid username"
#fi
