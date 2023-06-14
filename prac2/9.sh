#!/bin/bash
echo "Enter the limit: "
read limit

num1=0
num2=1

echo "The Fibonacci series up to $limit terms is: "
echo -n "$num1 $num2 "

count=2
while [ $count -lt $limit ]; do
    fib=$((num1 + num2))
    echo -n "$fib "
    num1=$num2
    num2=$fib
    count=$((count + 1))
done

echo
