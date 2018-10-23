#!/bin/sh
# Changes a password fro a user across estate - W.Hart

# Usage/Syntax check...
if (( $# < 2 )); then
    echo "Usage: deploypw <username> <password>"
    exit 1
fi
# Parse through the array of hosts and call the user creation script for each one.
while read F  ; do
        echo "Changing password for $1 on $F ..."
        # Call password change script.
        /home/billh/scripts/chpass.sh $F $1 $2
        #echo $F
done </home/billh/scripts/hosts.txt
echo "Password change completed!"

