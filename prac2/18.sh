#!/bin/bash

hour=$(date +%H)

if [ $hour -ge 0 ] && [ $hour -lt 6 ]; then
    echo "Good night"
elif [ $hour -ge 6 ] && [ $hour -lt 12 ]; then
    echo "Good morning"
elif [ $hour -ge 12 ] && [ $hour -lt 18 ]; then
    echo "Good afternoon"
else
    echo "Good evening"
fi
