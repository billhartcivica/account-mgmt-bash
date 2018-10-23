#!/bin/sh
# Remotely change a password for a user on a host
if (( $# < 3 )); then
    echo "Usage: chpass <server> <username> <password>"
    exit 1
fi
ssh -t billh@$1 bash -c "'
echo Setting password...
sudo echo $3 | sudo passwd $2 --stdin
'"

