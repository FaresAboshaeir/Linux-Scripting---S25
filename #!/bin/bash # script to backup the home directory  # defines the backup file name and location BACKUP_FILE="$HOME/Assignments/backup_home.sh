#!/bin/bash
# Made by Fares Aboshaeir
# script to backup the home directory

# defines the backup file name and location
BACKUP_FILE="$HOME/Assignments/mybackup.tgz"

# creates the backup
tar -cvzf "$BACKUP_FILE" "$HOME"

# prints a success message
echo "Backup completed successfully: $BACKUP_FILE"
