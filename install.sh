#!/usr/bin/env bash
echo "Updating Image"
apt-get update
apt-get full-upgrade

echo "Installing custom packages!"
apt-get install sshpass lftp python3 python2 python python-pip python3-pip -y
echo "End of install script!"