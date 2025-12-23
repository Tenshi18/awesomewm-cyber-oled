#!/bin/bash
# Скрипт для управления яркостью, не опуская её ниже 5%
ACTION=$1
STEP=1
MIN=1
CURRENT=$(light -G | cut -d'.' -f1)

if [ "$ACTION" = "up" ]; then
    light -A $STEP
elif [ "$ACTION" = "down" ]; then
    NEW=$(( CURRENT - STEP ))
    if [ $NEW -lt $MIN ]; then
        NEW=$MIN
    fi
    light -S $NEW
else
    echo "Usage: $0 up|down"
    exit 1
fi
