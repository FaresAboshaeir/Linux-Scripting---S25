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
abos0008@fedora:~/Assignments/Assignment10$ ls
041087275     case.sh     electricitybill.sh  file.txt   login.sh     table.sh
abos0008.txt  counter.sh  FDcreate.sh         login2.sh  magicbox.sh
abos0008@fedora:~/Assignments/Assignment10$ cat magicbox.sh 
#!/bin/bash

# user authentication
declare -A users
users["admin"]="password123"
users["user1"]="mypassword"
users["user2"]="test123"

# function to display menu
show_menu() {
    echo "Welcome to the Magic Box!"
    echo "1) System Information"
    echo "2) View Running Processes"
    echo "3) Display Current Date & Time"
    echo "4) Clear Screen"
    echo "5) Inode Finder"
    echo "6) IP Scanner"
    echo "7) Quit"
    echo "8) Disk Usage Summary"
    echo "9) Check Network Connection"
}

# function to get system information
system_info() {
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime -p)"
    echo "Kernel Version: $(uname -r)"
}

# function to display running processes
view_processes() {
    top -n 5
}

# function to find inode number
inode_finder() {
    read -p "Enter file/directory path: " path
    if [ -e "$path" ]; then
        ls -i "$path"
    else
        echo "Error: Invalid path. File or directory does not exist."
    fi
}

# function for IP Scanner
ip_scanner() {
    read -p "Enter first three octets of the network (e.g., 192.168.112): " network
    echo "Scanning network $network.0/24..."
    for i in {1..254}; do
        ping -c 1 -W 1 "$network.$i" &>/dev/null && echo "Host $network.$i is alive"
    done
}

# function to check disk usage
disk_usage() {
    df -h
}

# function to check network connection
network_check() {
    ping -c 4 google.com
}

# authentication
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""

if [[ ${users[$username]} == "$password" ]]; then
    echo "Authentication successful."
    while true; do
        show_menu
        read -p "Choose an option: " choice
        case $choice in
            1) system_info ;;
            2) view_processes ;;
            3) date ;;
            4) clear ;;
            5) inode_finder ;;
            6) ip_scanner ;;
            7) echo "Exiting Magic Box. Goodbye!"; break ;;
            8) disk_usage ;;
            9) network_check ;;
            *) echo "Invalid option, please try again." ;;
        esac
        echo ""
    done
else
    echo "WARNING: Authentication failed! Access denied."
fi
