#!/bin/sh
# Remotely create a user on a host
if (( $# < 3 )); then
    echo "Usage: createuser <server> <username> <password>"
    exit 1
fi
ssh -t billh@$1 bash -c "'
echo Creating user...
sudo useradd -m $2
echo Setting password...
sudo echo $3 | sudo passwd $2 --stdin
echo Adding groups...
sudo usermod -G wheel,wtg $2
sudo mkdir /home/$2/.ssh
sudo chown -R $2 /home/$2/.ssh
'"

