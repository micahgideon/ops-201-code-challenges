#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/9/23
# Purpose: Write a script with arrays

# Main

# Create four directories: dir1, dir2, dir3, dir4

mkdir dir1 dir2 dir3 dir4

# Put the names of the four directories in an array

path_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

# References the array variable to create a new .txt file in each directory

touch "${path_array[0]}file.txt"
touch "${path_array[1]}file.txt"
touch "${path_array[2]}file.txt"
touch "${path_array[3]}file.txt"

# End