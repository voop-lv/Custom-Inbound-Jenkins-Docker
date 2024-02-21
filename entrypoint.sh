#!/usr/bin/env bash

while true; do
    /usr/local/bin/jenkins-agent
    exit_status=$?
    if [ $exit_status -ge 128 ] && [ $exit_status -lt 192 ]; then
        echo "[INFO] Received signal, exiting."
        exit
    else
        echo "[Alert] Jenkins Agent has exited! Relaunching..."
    fi
done