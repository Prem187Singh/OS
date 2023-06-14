#!/bin/bash

echo "Filename --------- Size (KB) ----- Date ----- Protection ----- Owner"
echo "-------------------------------------------------------------------"

for file in *; do
    size=$(du -k "$file" | cut -f1)
    date=$(stat -c %y "$file" | cut -d' ' -f1)
    protection=$(ls -l "$file" | cut -c1-10)
    owner=$(ls -l "$file" | awk '{print $3}')
    echo "$file --------- $size ----- $date ----- $protection ----- $owner"
done
