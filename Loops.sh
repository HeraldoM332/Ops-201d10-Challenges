#!/bin/bash

# Script Name:                  Loops
# Author:                       Heraldo Morales
# Date of latest revision:      10/29/2023
# Purpose:                      The purpose of this script is to show how loops work

#Display Running Process

  for PID in Terminal 
  do 
   
ps aux

      echo "What is PID?"

      read input from user 

      kill $input 

    done 

