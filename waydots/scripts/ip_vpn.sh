#!/bin/bash

interface=$(ip route | grep default | awk '{print $5}')
#TODO
if [ "$1" == "click" ]; then
    if pgrep -x "app" >/dev/null; then
        sleep 1
    else
        sleep 1
    fi
    exit
fi
