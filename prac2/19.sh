#!/bin/bash

echo "Enter a date (dd-mm-yyyy): "
read date

if [[ $date =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]; then
    day=$(echo $date | cut -d'-' -f1)
    month=$(echo $date | cut -d'-' -f2)
    year=$(echo $date | cut -d'-' -f3)

    if [ $day -gt 0 ] && [ $day -le 31 ] && [ $month -gt 0 ] && [ $month -le 12 ] && [ $year -ge 1000 ] && [ $year -le 9999 ]; then
        echo "Valid date."
    else
        echo "Invalid date."
    fi
else
    echo "Invalid date format."
fi

