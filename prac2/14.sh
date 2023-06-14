#!/bin/bash

echo "Enter a positive integer: "
read n

echo "Prime numbers from 1 to $n:"
for ((i=2; i<=$n; i++)); do
    isPrime=true

    for ((j=2; j<=i/2; j++)); do
        if [ $((i%j)) -eq 0 ]; then
            isPrime=false
            break
        fi
    done

    if $isPrime; then
        echo $i
    fi
done
