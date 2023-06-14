#!/bin/bash

echo "Enter a decimal number: "
read decimal

binary=$(echo "obase=2; $decimal" | bc)
octal=$(echo "obase=8; $decimal" | bc)
hex=$(echo "obase=16; $decimal" | bc)

echo "Binary: $binary"
echo "Octal: $octal"
echo "Hexadecimal: $hex"
