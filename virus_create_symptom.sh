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
	b=1
	while [ $b -lt 3 ]
	do
		s$b=$(ls home/d$b_patient$a/Symptoms/ | wc -l)
	
		if [ $s$b -gt 20 ]
		then
	          userdel -r -f d$b_patient$a
		fi
	  b=$(expr $b + 1)
	done
	 	 
       a=$(expr $a + 1)
   done

a=1
while [ $a -lt 3 ]
do
   
   ds=$(ls home/doc$a/Symptoms/ | wc -l)
   
   if [ $ds -gt 20 ]
   then 
     userdel -r -f doc$a
   fi
   
   a=$(expr $a + 1)
done   

else
    echo "user not permitted"  
fi


   
   
     
     
     
     
     
     
   
