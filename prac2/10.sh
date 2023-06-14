#!/bin/bash
echo "Enter $1 numbers: "
read -a numbers

sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -nr))

echo "Numbers in descending order: ${sorted_numbers[@]}"
