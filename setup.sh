#!/bin/bash

# Check if necessary stow command is available
if ! command -v stow 2>&1 >/dev/null; then
    echo -e "\nstow is necessary to run this script.\n"
    exit 1
fi

for dir in $(ls -d */); do
    stow $dir
done

echo -e "\ndotfiles applied.\n"
