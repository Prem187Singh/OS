#!/bin/bash
echo "Enter a number between 1 and 3: "
read choice

case $choice in
    1)
        echo "You chose option 1."
        ;;
    2)
        echo "You chose option 2."
        ;;
    3)
        echo "You chose option 3."
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
