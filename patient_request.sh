#!/bin/bash

function request {

  pname=$1
  dname=$2
  $s=$3 #symptom
  
  pn=$(echo "${s: -1}") #extract the last character ,i.e the patient number
  
  echo "$s" >>home/$dname/Requests/p$pn.txt

  ps=$(ls home/$u/ | wc -l) #present number of symptoms
  sn=$(expr $ps + 1)
   
  echo "$s" >>home/$pname/Symptoms/symptom_$sn.txt
  
  if [ $sn -gt 20 ]
  then
    userdel -r -f $pname
  fi

  
}


echo "Enter name:"
read p

echo "\nEnter doctor's name:"
read d

echo "\nEnter the symptom:"
read sym

request $p $d $sym



