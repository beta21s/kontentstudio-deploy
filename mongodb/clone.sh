#!/bin/bash

# Source MongoDB connection parameters
HOST="45.32.117.158"
USERNAME="admin"
PASSWORD="YWiImBR2V5VbTF4z"
AUTH_DB="admin"

# Target MongoDB connection parameters
HOST_TARGET="localhost"
USERNAME_TARGET="root"
PASSWORD_TARGET="YWiImBR2V5VbTF4z"
AUTH_DB_TARGET="admin"

TARGET_DB="production-crawler"
SOURCE_DB="production-crawler"

# Drop the target database
mongo --host $HOST_TARGET --username $USERNAME_TARGET --password $PASSWORD_TARGET --authenticationDatabase $AUTH_DB_TARGET --eval "db.getSiblingDB('$TARGET_DB').dropDatabase()"

# Backup
mongodump --host=$HOST --username=$USERNAME --password=$PASSWORD --authenticationDatabase=$AUTH_DB --db=$SOURCE_DB --gzip --archive=tmp.zip

# Restore
mongorestore --host=$HOST_TARGE --username=$USERNAME_TARGE --password=$PASSWORD_TARGE --authenticationDatabase=$AUTH_DB_TARGE --nsFrom "$SOURCE_DB.*" --nsTo "$TARGET_DB.*" --gzip --archive=tmp.zip

# Clean up temporary backup file
rm tmp.zip