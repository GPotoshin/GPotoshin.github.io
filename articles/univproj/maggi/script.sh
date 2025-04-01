#!/bin/bash

# Loop through all files matching the pattern 'Scan {number}.jpeg'
for file in Scan\ *.jpeg; do
  # Check if the file exists and matches the pattern
  if [[ -f "$file" ]]; then
    # Generate the output filename by adding a '_rotated' suffix
    output_file="rotated_$file"
    
    # Rotate the image 90 degrees clockwise using ffmpeg
    ffmpeg -i "$file" -vf "transpose=1" "$output_file"
    
    # Optionally, echo to show the file being processed
    echo "Rotated '$file' and saved as '$output_file'"
  fi
done

