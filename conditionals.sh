#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/14/23
# Purpose: Detect is a file or directory exists, then creats one if it doesn't

# Main
lsh
array=("file.txt" "directory")

for name in "${array[@]}"
do
  if [ ! -e "$name" ]; then
    echo "$name does not exist. Creating it now..."
    if [ "$name" == "file.txt" ]; then
      touch "$name"
    elif [ "$name" == "directory" ]; then
      mkdir "$name"
    fi
  else
    echo "$name exists."
  fi
done

# End