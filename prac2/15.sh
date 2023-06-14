#!/bin/bash

# Inventory Management System

declare -A inventory

function add_item() {
    echo "Enter the item name: "
    read item
    echo "Enter the quantity: "
    read quantity
    inventory[$item]=$quantity
    echo "Item added to inventory."
}

function display_inventory() {
    echo "Inventory: "
    for item in "${!inventory[@]}"; do
        echo "$item: ${inventory[$item]}"
    done
}

function main_menu() {
    echo "=== Inventory Management System ==="
    echo "1. Add Item"
    echo "2. Display Inventory"
    echo "3. Exit"
    echo "Enter your choice: "
    read choice

    case $choice in
        1)
            add_item
            ;;
        2)
            display_inventory
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
}

while true; do
    main_menu
done
