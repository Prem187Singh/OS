#!/bin/bash
echo "Enter the value of n: "
read n

count=0
num=2

while [ $count -lt $n ]; do
    isPrime=true

    for ((i=2; i<=num/2; i++)); do
        if [ $((num%i)) -eq 0 ]; then
            isPrime=false
            break
        fi
    done

    if $isPrime; then
        echo $num
        count=$((count + 1))
    fi

    num=$((num + 1))
done
