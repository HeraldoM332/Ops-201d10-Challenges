# Script Name:                  IP analysis
# Author:                       Heraldo Morales
# Date of latest revision:      11/07/23
# Purpose:                      The purpose of this script is to show what a select-string can do


# The first part of the command retrieves the Ipv4 address from where it's located
# Function to retrieve IPv4 addresses from a given text file
function Get-IPv4Addresses($filePath) {
    $ipAddresses = Select-String -Path $filePath -Pattern '\b(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\b' | ForEach-Object {
        $_.Matches[0].Value
    }
    return $ipAddresses
}

# This command creates a file and if it is already there then it will overwrite it creating a new  one with the contents inside
# Create a local file network_report.txt that holds the contents of an ipconfig /all command
ipconfig /all | Out-File -FilePath "network_report.txt"


# This command calls the function and then stores it in the variable
# Get IPv4 addresses from network_report.txt using the function
$ipv4Addresses = Get-IPv4Addresses -filePath "network_report.txt"

#This command displays the address
# Display the IPv4 addresses
Write-Host "IPv4 Addresses:"
$ipv4Addresses | ForEach-Object {
    Write-Host $_
}


# This command removes it when it's completed the task successfully
# Remove the network_report.txt file when finished
Remove-Item -Path "network_report.txt"


#Done