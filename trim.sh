#!/bin/bash

# File to be trimmed
input_file="$1"
temp_file="$(mktemp)"

# Maximum size in bytes (500 KB)
# 500 KB er max-grensa for førehandsvisning i GitHub
# Sett lavare for å spare plass
max_size=$((100 * 1024))

# Check if file is already smaller than max_size
if [ $(stat -f%z "$input_file") -le $max_size ]; then
    # echo "File is already smaller than $max_size bytes. Skipping."
    exit 0
fi

# Estimate initial number of lines to fit in max_size
estimated_lines=$(head -c $max_size "$input_file" | wc -l)

# Trim the file to estimated lines and check size
head -n $estimated_lines "$input_file" > "$temp_file"

# If the file is still larger than max_size, reduce the number of lines
while [ $(stat -f%z "$temp_file") -gt $max_size ]; do
    estimated_lines=$((estimated_lines - 1))
    head -n $estimated_lines "$input_file" > "$temp_file"
done

# Replace the original file with the temporary file
mv "$temp_file" "$input_file"

# Verify final size
# echo "Final file size: $(stat -f%z "$input_file") bytes"