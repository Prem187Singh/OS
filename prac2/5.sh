#!/bin/bash
echo "Enter a number: "
read num

isPrime=true

if [ $num -eq 1 ]; then
    isPrime=false
fi

for ((i=2; i<=$num/2; i++)); do
    if [ $((num%i)) -eq 0 ]; then
        isPrime=false
        break
    fi
done

if $isPrime; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi
