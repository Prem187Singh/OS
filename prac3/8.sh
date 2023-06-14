#!/bin/bash

while true; do
    echo "Menu"
    echo "a. Display names of all users currently logged in"
    echo "b. Display names of all members of a particular group"
    echo "c. Display names of all users who are in the system"
    echo "d. Quit"
    read -p "Enter your choice: " choice

    case $choice in
        a) who | cut -d' ' -f1 | sort -u ;;
        b) read -p "Enter group name: " group
           getent group "$group" | cut -d: -f4 | sed 's/,/\n/g' ;;
        c) cut -d: -f1 /etc/passwd ;;
        d) break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac

    read -p "Press enter to continue..."
    clear
done
