#!/bin/bash

function create {
  u=$1
  v=$2
  	
  sn=$(ls /home/$u/Vaccines | wc -l)
  n=$(expr $sn +1)
  
  echo "$v" >>home/$u/Vaccines/vaccine_$n.txt
  
}


user=$(whoami)

if ["$user" = "doc1"] || ["$user" = "doc2"]
then
  echo "Enter the vaccine name to be created:";
  read r
  
  create $user $r
  
else
  echo "User not authorized"

fi

    
  
