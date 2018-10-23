#!/bin/sh
# Remotely delete a user on a host
if (( $# < 3 )); then
    echo "Usage: deluser <server> <username> <password>"
    exit 1
fi
ssh -t billh@$1 bash -c "'
echo Deleting user...
sudo userdel -rf $2
'"

