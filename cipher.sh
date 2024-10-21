#!/bin/bash

# Function to shift letters by 3 (Caesar cipher)
caesar_shift() {
  local text="$1"
  echo "$text" | tr 'A-Za-z' 'D-Za-cd-za'
}

# Directory containing text files (you can change this)
DIRECTORY="./"

# Loop through all the text files in the directory
for file in "$DIRECTORY"/*.txt; do
  if [[ -f $file ]]; then
    # Read the content of the file
    content=$(cat "$file")
    
    # Apply the Caesar cipher to the content
    shifted_content=$(caesar_shift "$content")
    
    # Write the shifted content back to the file or a new one
    echo "$shifted_content" > "$file"
    
    echo "Processed: $file"
  else
    echo "No text files found in the directory."
  fi
done
