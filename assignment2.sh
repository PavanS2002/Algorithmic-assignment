#!/bin/bash

# Assuming ArrayA and ArrayB are already defined
ArrayA=(1 3 5 0 0 0)
ArrayB=(6 4 2)

# Read elements from ArrayB into ArrayA
for element in "${ArrayB[@]}"; do
    ArrayA+=("$element")
done

# Sort ArrayA in ascending order
IFS=$'\n' sorted=($(sort -n <<<"${ArrayA[*]}"))
unset IFS

# Print the sorted array
echo "${sorted[*]}"
