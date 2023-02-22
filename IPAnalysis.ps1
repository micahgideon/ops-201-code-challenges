# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/21/23
# Purpose: Create a script that returns the ip address of the computer

# Main
$path = "network_report.txt"
# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
function GetIPAddress {ipconfig /all > $path
# Use Select-String to search network_report.txt and return only the IP version 4 address.
	$ipAddress =  Select-String -Path $path -Pattern '192.168.0.\d{1,3}'
# Remove the network_report.txt when you are finished searching it.
	Remove-Item -Path $path

	return ipAddress
}

GetIPAddress
# End