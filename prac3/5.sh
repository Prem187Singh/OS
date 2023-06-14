#!/bin/bash

read -p "Enter student name: " name
read -p "Enter marks in subject 1: " subject1
read -p "Enter marks in subject 2: " subject2
read -p "Enter marks in subject 3: " subject3

total=$((subject1 + subject2 + subject3))
percentage=$((total / 3))

echo "Mark-Sheet"
echo "-----------"
echo "Student Name: $name"
echo "Subject 1: $subject1"
echo "Subject 2: $subject2"
echo "Subject 3: $subject3"
echo "Total Marks: $total"
echo "Percentage: $percentage"

if ((percentage >= 80)); then
    echo "Grade: A"
elif ((percentage >= 70)); then
    echo "Grade: B"
elif ((percentage >= 60)); then
    echo "Grade: C"
elif ((percentage >= 50)); then
    echo "Grade: D"
else
    echo "Grade: F"
fi
