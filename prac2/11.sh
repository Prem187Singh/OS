#!/bin/bash

echo "Executable Files:"
echo "-----------------"
find . -type f -executable

echo

echo "Directories:"
echo "------------"
find . -type d

echo

echo "Zero-sized Files:"
echo "-----------------"
find . -type f -size 0
