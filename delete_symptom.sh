#!/bin/bash

user=$(whoami)

if [[ "$user" == "doc"* ]]
then

  echo "Enter the patient name:"
  read p
  
  echo "\nEnter the symptom name to be deleted:"
  read s
  
  rm /home/$p/$s
  
else
  echo "User not authorized"

fi


  
  
  
  
  
 
