#!/bin/bash

database_file="database.txt"

while true; do
    echo "Menu"
    echo "a. Insert record"
    echo "b. Delete record"
    echo "c. View all records"
    echo "d. Sort records"
    echo "e. Query on field"
    echo "f. Quit"
    read -p "Enter your choice: " choice

    case $choice in
        a) read -p "Enter record to insert: " record
           echo "$record" >> $database_file
           echo "Record inserted successfully." ;;
        b) read -p "Enter record to delete: " record
           sed -i "/$record/d" $database_file
           echo "Record deleted successfully." ;;
        c) echo "All Records:"
           cat $database_file ;;
        d) sort -o $database_file $database_file
           echo "Records sorted successfully." ;;
        e) read -p "Enter field to query: " field
           grep "$field" $database_file ;;
        f) break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac

    read -p "Press enter to continue..."
    clear
done
