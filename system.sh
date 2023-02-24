#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/24/23
# Purpose: 

# Main

# Uses lshw to display system information to the screen about the following components: 
# Name of the computer
lshw | grep -B 1 "description: Computer" | grep -v "description: Computer"
# CPU
    # Product
    # Vendor
    # Physical ID
    # Bus info
    # Width
lshw | grep -A 6 "*-cpu" | grep -v "version"
# RAM

#     Description
#     Physical ID
#     Size

lshw | grep -A 3 "*-memory"
# Display adapter

#     Description
#     Product
#     Vendor
#     Physical ID
#     Bus info
#     Width
#     Clock
#     Capabilities
#     Configuration
#     Resources

lshw | grep -A 12 "*-display" | grep -v "logical" | grep -v "version"
# Network adapter

#     Description
#     Product
#     Vendor
#     Physical ID
#     Bus info
#     Logical name
#     Version
#     Serial
#     Size
#     Capacity
#     Width
#     Clock
#     Capabilities
#     Configuration
#     Resources

lshw | grep -A 15 "*-network"

#End