#!/bin/bash
echo "Enter marks for subject 1: "
read subj1
echo "Enter marks for subject 2: "
read subj2
echo "Enter marks for subject 3: "
read subj3

total=$((subj1 + subj2 + subj3))
percentage=$((total / 3))

echo "Total marks: $total"
echo "Percentage: $percentage%"

if [ $percentage -ge 75 ]; then
    echo "Class: Distinction"
elif [ $percentage -ge 60 ]; then
    echo "Class: First Division"
elif [ $percentage -ge 40 ]; then
    echo "Class: Second Division"
else
    echo "Class: Fail"
fi
