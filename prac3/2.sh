#!/bin/bash

while true; do
    echo "Menu"
    echo "a. List directory"
    echo "b. Copy file"
    echo "c. Rename a file"
    echo "d. Delete a file"
    echo "e. Edit a file"
    echo "f. Quit"
    read -p "Enter your choice: " choice

    case $choice in
        a) ls -l ;;
        b) read -p "Enter source file: " source_file
           read -p "Enter destination file: " dest_file
           cp $source_file $dest_file ;;
        c) read -p "Enter old filename: " old_file
           read -p "Enter new filename: " new_file
           mv $old_file $new_file ;;
        d) read -p "Enter file to delete: " file
           rm $file ;;
        e) read -p "Enter file to edit: " file
           vi $file ;;
        f) break ;;
        *) echo "Invalid choice. Please try again." ;;
    esac

    read -p "Press enter to continue..."
    clear
done
