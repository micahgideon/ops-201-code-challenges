#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/22/23
# Purpose: Create a script that asks a user for a domain and feeds back a text file with the information on that domain

# Main

domain_information () {
	# Take a user input string. Presumably the string is a domain name such as Google.com.
	echo "Enter a domain name:"
	read domain

	# Run whois against a user input string.
	whois $domain >> domain.txt
	dig $domain >> domain.txt
	host $domain >> domain.txt
	nslookup $domain >> domain.txt
}

domain_information

code domain.txt

# End