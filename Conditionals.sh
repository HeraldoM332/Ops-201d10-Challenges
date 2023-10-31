#!/bin/bash

# Script Name:                  Conditionals
# Author:                       Heraldo Morales
# Date of latest revision:      10/30/23
# Purpose:                      Create a scripts that detects file/directory if not create one

# Declaration of variables and array
Directory_List=("Dir1" "Dir2" "Dir3" "Dir4")



#Display File Name

echo "Enter File Name:"
read fn
if test -a $fn
then
echo "Yes, file exist"
else
echo "File does not exist"
fi

#create new file 
while true; do

    read -p "Do you want to create a new file? (yes/no) " yn

    case $yn in 
	yes ) echo "ok, we will proceed"  
        mkdir $fn  
		;;
	no ) echo "exiting..."
		exit
        ;;
	* ) echo "Invalid Response"
        ;;
        
    esac

done

 
