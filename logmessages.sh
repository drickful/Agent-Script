#!/bin/bash
# To delete files in /var/log/messages that are 7 days old.
# Must be root 
# Author:

if
[ $UID != 0 ]
then
echo "You must be root to run this"
else
find /var/log/messages -mtime +7 -type f -delete
echo "Files deleted Successfully"
fi 
