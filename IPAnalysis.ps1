# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/21/23
# Purpose: Create a script that returns the ip address of the computer

# Main
$File = "C:\Users\$env:USERNAME\Documents\network_report.txt"
# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
ipconfig /all > $File
function GetIPAddress {
# Use Select-String to search network_report.txt and return only the IP version 4 address.
	Select-String -Path $File -Pattern 'IPv4'
# Remove the network_report.txt when you are finished searching it.
	Remove-Item -Path $File
}

GetIPAddress
# End