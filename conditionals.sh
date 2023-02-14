#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/13/23
# Purpose: Detect is a file or directory exists, then creats one if it doesn't

# Main

name_array=("file.txt" "directory")

for name in "${name_array[@]}"
do
  path="${name}"

  if [ ! -e "$path" ]; then
    echo "$path does not exist. Creating it now..."
    if [ "$name" == "file.txt" ]; then
      touch "$path"
    elif [ "$name" == "directory" ]; then
      mkdir "$path"
    fi
  else
    echo "$path exists."
  fi
done

# End