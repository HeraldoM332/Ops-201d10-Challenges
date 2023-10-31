#!/bin/bash

# Script Name:                  System Information
# Author:                       Heraldo Morales
# Date of latest revision:      10/31/23
# Purpose:                      The purpose is to display System Information
# System Requirements 
#   Use LSHW to show system information
#   Use grep to remove irrelevant information
#   Text to Output to show components



echo "Displaying System Information"
echo "Name of the computer"
hostname 
echo 
echo "Displaying CPU information"
lshw -class processor | grep -E 'product|vendor|physical id|bus info|width' | sed 's/.*: //'
echo  


echo "Displaying RAM information"
lshw -class memory | grep -E 'description|physical id|size' | sed 's/.*: //'
echo 

echo "Displaying Display Adapter Information"
lshw -class display | sed 's/.*: //'
echo 
echo "Displaying Network Adapter"
lshw -class network | sed 's/.*: //'
echo 
echo "Displaying Bios"
dmidecode -t bios | sed 's/.*: //'





