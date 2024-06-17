#!/bin/bash

# Path to the original image
original_img="empty_image.jpg"

# Check if the image exists
if [ ! -f "$original_img" ]; then
    echo "The image $original_img was not found."
    exit 1
fi

# Infinite loop to copy the image until disk space runs out
i=0
while :  
do
    # Create a copy of the image
    cp "$original_img" "copy_$i.jpg"

    # Increment the counter
    i=$((i+1))

    # Check disk space every 50 copies to avoid overloading the system
    if ((i % 50 == 0)); then
        available=$(df "/home/usuario/limpadisco" | tail -1 | awk '{print $4}')
        if ((available < 100000)); then  # Less than 100MB available, adjust as necessary
            echo "Disk space almost full."
            break
        fi
    fi
done
