#!/bin/bash



# Script Name:                  Domain Analyzer
# Author:                       Heraldo Morales
# Date of latest revision:      11/08/2023
# Purpose:                      Use a script that askas a user to type a domain, then displays information



# This function takes the following commands and performs operations with them
perform_operations() {
    domain=$1
    whois $domain > results.txt
    dig $domain >> results.txt
    host $domain >> results.txt
    nslookup $domain >> results.txt
    echo "Operations completed. Results saved to results.txt."
    # Open the results file with your favorite text editor
    # Replace "your_text_editor" with the actual command for your text editor
    your_text_editor results.txt
}


# This command will read a user input, then store it in a user variable. Perform Operations is the command that is called.
# Main script
echo "Enter a domain:"
read user_input

# Call the function with user input
perform_operations "$user_input"


#Done

