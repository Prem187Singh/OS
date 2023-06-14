#!/bin/bash

while true; do
    echo "Menu"
    echo "a. Display calendar of current month"
    echo "b. Display today's date and time"
    echo "c. Display usernames currently logged in the system"
    echo "d. Display your name at given x, y position"
    echo "e. Display your terminal number"
    echo "f. Display names of all users who are in the system"
    echo "h. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        a) cal ;;
        b) date ;;
        c) who ;;
        d) read -p "Enter X position: " x
           read -p "Enter Y position: " y
           tput cup $x $y
           echo "Your Name" ;;
        e) tty ;;
        f) cut -d: -f1 /etc/passwd ;;
        h) break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac

    read -p "Press enter to continue..."
    clear
done
