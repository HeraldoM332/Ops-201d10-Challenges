#!/bin/bash

# Script Name:                  Arrays
# Author:                       Heraldo Morales
# Date of latest revision:      10/26/2023
# Purpose:                      Demonstrate the workings of an Array



# Creates four directories: dir1, dir2, dir3, dir4

# Declaration of variables and array
Directory_List=(Dir1 Dir2 Dir3 Dir4)


# Main
mkdir ${Directory_List[*]}
echo
touch ~/Desktop/201d10/Ops-201d10-Challenges/${Directory_List[0]}/text.txt
touch ~/Desktop/201d10/Ops-201d10-Challenges/${Directory_List[1]}/text.txt
touch ~/Desktop/201d10/Ops-201d10-Challenges/${Directory_List[2]}/text.txt
touch ~/Desktop/201d10/Ops-201d10-Challenges/${Directory_List[3]}/text.txt

