#!/usr/bin/env bash
echo "Updating Image"
apt-get update
apt-get full-upgrade

echo "Installing custom packages!"
apt-get install sshpass lftp python3 python3-pip gcc -y
echo "End of install script!"