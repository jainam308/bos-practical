#!/bin/bash

echo "Enter a string in lowercase:"
read lowercase_string

uppercase_string=$(echo "$lowercase_string" | tr '[:lower:]' '[:upper:]')

echo "Uppercase version: $uppercase_string"
