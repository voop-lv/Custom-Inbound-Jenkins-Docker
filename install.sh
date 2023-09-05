#!/usr/bin/env bash
echo "Updating Image"
apt-get update
apt-get full-upgrade

echo "Installing custom packages!"
apt-get install sshpass lftp python3 python3-pip gcc -y
echo "End of install script!"

echo "Installing python packages!"
pip install hvac pysftp texttable docker boto3 bcrypt certifi cffi charset-normalizer idna numpy opencv-python requests urllib3 paramiko PyNaCl pyhcl pycparser
echo "End of installing python packages!"