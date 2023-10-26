#!/bin/bash
# Script Name:                  Functions
# Author:                       Heraldo Morales
# Date of latest revision:      10/25/2023
# Purpose:                      How a Function Works

# Declaration of variables
loginHist=`last`
# Declaration of functions
print_history() {
    echo "$loginHist This is the login history"
}

# Main
print_history
print_history
print_history


# End