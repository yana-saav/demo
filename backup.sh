#!/bin/bash
#Backup
backup_f="/home/yana/"
#Place
dest="/home/yana/backups/"
#Name
date=$(date +%A)
hostname=$(hostname -s)
archive_f="$hostname-$date.tgz"
echo "Start backup $backup_f to $dest/$archive_f"
date
#Create archive
tar czf $dest/$archive_f $backup_f
echo "Backup finished"
