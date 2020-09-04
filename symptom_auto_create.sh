#!/bin/bash

arr=(cough cold fever throatpain drycough sneezing fatigue breathshortness lossoftaste chestpain lossofspeech rashes headache sorethroat conjuctivits diarrhoea)



a=1
while [ $a -lt 6 ]
do
   b=1
   while [$b -lt 3 ]
   do
	ts$b=$(ls home/d$b_patient$a/Symptoms/ | wc -l)

	s$b=$(expr $ts$b + 1)
	
	n=$((RANDOM % 16))
	echo "${arr[$n]}" >>home/d$b_patient$a/Symptoms/symptom_$s$b.txt

	
	if [ $s$b -gt 20 ]
	then
	  userdel -r -f d$b_patient$a
	fi
      b=$(expr $b + 1)
   done
	 
  a=$(expr $a + 1)
done

a=1
while [$a -lt 3 ]
do
	tsd$a=$(ls home/doc$a/Symptoms/ | wc -l)
	sd$a=$(expr $tsd$a + 1)

	n=$((RANDOM % 16))
	echo "${arr[$n]}" >>home/doc$a/Symptoms/symptom_$sd$a.txt

	if [ $sd$a -gt 20 ]
	then
   	   userdel -r -f doc$a
	fi

   a=$(expr $a + 1)
done







