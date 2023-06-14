#!/bin/bash

while true; do
    echo "Menu"
    echo "a. Display current directory"
    echo "b. List directory"
    echo "c. Make directory"
    echo "d. Change directory"
    echo "e. Quit"
    read -p "Enter your choice: " choice

    case $choice in
        a) pwd ;;
        b) ls ;;
        c) read -p "Enter directory name: " dir_name
           mkdir $dir_name ;;
        d) read -p "Enter directory path: " dir_path
           cd $dir_path ;;
        e) break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac

    read -p "Press enter to continue..."
    clear
done
