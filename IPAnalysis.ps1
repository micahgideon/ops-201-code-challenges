# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Micah	Miranda
# Date of latest revision: 2/21/23
# Purpose: Create a script that returns the ip address of the computer

# Main
$path = "network_report.txt"
# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
function GetIPAddress {ipconfig /all > $path
# Use Select-String to search network_report.txt and return only the IP version 4 address.
	$ipAddress = Get-Content network_report.txt | Select-String -Context 0,31 -Pattern 'Ethernet adapter Ethernet' | Select-Object -ExpandProperty Context | Select-String -Pattern '\bIPv4 Address\b.*(\d{1,3}\.){3}\d{1,3}\b' -Context 0,7
# Remove the network_report.txt when you are finished searching it.
	Remove-Item -Path

	return ipAddress
}

GetIPAddress
# End