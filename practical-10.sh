#!/bin/bash

echo "Enter the name of the file to display:"
read display_file

if [ -f "$display_file" ]; then
    echo "Content of $display_file:"
    cat "$display_file"
else
    echo "$display_file does not exist or is not a file."
fi
echo "Enter the name of the source file to append:"
read source_file

echo "Enter the name of the destination file to append to:"
read dest_file

if [ -f "$source_file" ] && [ -f "$dest_file" ]; then
    cat "$source_file" >> "$dest_file"
    echo "Content of $source_file appended to $dest_file."
else
    echo "Both files must exist and be readable."
fi