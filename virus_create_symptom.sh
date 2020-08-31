#!/bin/bash

user=$(whoami)

if [ "$user" = "corona" ]
then
   echo "Enter the username to create symptom:"
   read u
   echo "\nEnter the Symptom:"
   read s
   
   ps=$(ls home/$u/ | wc -l) #present number of symptoms
   sn=$(expr $ps + 1)
   
   echo "$s" >>home/$u/Symptoms/symptom_$sn.txt
   
   a=1
   while [ $a -lt 6 ]
   do
	s1=$(ls home/d1_patient$a/Symptoms/ | wc -l)
	s2=$(ls home/d2_patient$a/Symptoms/ | wc -l)
	
	if [ $s1 -gt 20 ]
	then
	  userdel -r -f d1_patient$a
	fi
	
	if [ $s2 -gt 20 ]
	then
	  userdel -r -f d2_patient$a
	fi   
	 
       a=$(expr $a + 1)
   done
   
   ds=$(ls home/doc1/Symptoms/ | wc -l)
   
   if [ $ds -gt 20 ]
   then 
     userdel -r -f doc1
   fi
   
   ds=$(ls home/doc2/Symptoms/ | wc -l)
   
   if [ $ds -gt 20 ]
   then
     userdel -r -f doc2
   fi


else
  echo "user not permitted"
  
fi


   
   
     
     
     
     
     
     
   
