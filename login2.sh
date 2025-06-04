#!/bin/bash
#Made by Fares Aboshaeir

USERNAME=$1
PASSWORD=$2

if [[ -z "$USERNAME" || -z "$PASSWORD" ]]; then
    echo "Usage: $0 <username> <password>"
    exit 1
fi

if [[ $USERNAME = "user1" && $PASSWORD = "toor" ]]; then
    echo "You are logged in"

elif [[ $USERNAME = "admin" && $PASSWORD = "password123" ]]; then
    echo "You are logged in as admin."

else
    echo "Invalid Username or Password!"
fi
