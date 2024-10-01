#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define the source and destination directories
SRC_DIR="$2"
DEST_DIR="$1"

# Check if source directory exists
if [ ! -d "$2" ]; then
    echo "Error: Source directory '$SRC_DIR' not found."
    exit 1
fi

# Check if destination directory exists
if [ ! -d "$1" ]; then
    echo "Error: Destination directory '$DEST_DIR' not found."
    exit 1
fi

# Find and replace file.
find_and_replace_file() {
    filename="$1"

    # Find the corresponding file in the destination directory
    dest_file=$(find "$DEST_DIR" -name "$filename" -type f)

    src_file=$(find "$SRC_DIR" -name "$filename" -type f)

    if [ -z "$dest_file" ]; then
        echo "❌ ❌ ❌ Destination file not found for: $filename"
        return 1
    fi

    # Replace the file
    if ! cp "$src_file" "$dest_file"; then
        echo "❌ ❌ ❌ Error: Failed to copy $src_file to $dest_file"
        return 1
    fi
    echo "✅ ✅ ✅ File $filename Replaced."
    return 0
}

error_occurred=false

# Extract files from source directory
while IFS= read -r -d '' file; do
    filename=$(basename "$file")
    if ! find_and_replace_file "$filename"; then
        error_occurred=true
    fi
done < <(find "$SRC_DIR" -type f -print0)

if $error_occurred; then
    echo "❌❌❌ Goldens failure to be replaced."
    exit 1
else
    echo "✅ ✅ ✅ File replacement completed successfully. ✅ ✅ ✅"

    # Delete the source directory
    rm -rf "$SRC_DIR"
    exit 0
fi
