#!/bin/sh
# Deletes a user across the estate - W.Hart

# Usage/Syntax check...
if (( $# < 2 )); then
    echo "Usage: deployusrdel <username> <password>"
    exit 1
fi
# Parse through the array of hosts and call the user creation script for each one.
while read F  ; do
        echo "Deleting user $1 on $F ..."
        # Call user creation script.
        /home/billh/scripts/deluser.sh $F $1 $2
        #echo $F
done </home/billh/scripts/hosts.txt
echo "User deletion completed!"

