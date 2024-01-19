#!/bin/bash

# MongoDB connection parameters
HOST="localhost"
USERNAME="admin"
PASSWORD="YWiImBR2V5VbTF4z"
AUTH_DB="admin"

# Backup directory
BACKUP_DIR="/home/ubuntu/mongo/data"

# Create a timestamp for the current date
TIMESTAMP=$(date +%Y-%m-%d)

# Perform the backup
mongodump --host=$HOST --username=$USERNAME --password=$PASSWORD --authenticationDatabase=$AUTH_DB --out="$BACKUP_DIR/$TIMESTAMP"

# Remove backups older than 7 days
find $BACKUP_DIR -type d -ctime +7 -exec rm -r {} \;