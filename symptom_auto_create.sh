#!/bin/bash

arr=(cough cold fever throatpain drycough sneezing fatigue breathshortness lossoftaste chestpain lossofspeech rashes headache sorethroat conjuctivits diarrhoea)



a=1
while [ $a -lt 6 ]
do
	
	ts1=$(ls home/d1_patient$a/Symptoms/ | wc -l)
	ts2=$(ls home/d2_patient$a/Symptoms/ | wc -l)
	
	s1=$(expr $ts1 + 1)
	s2=$(expr $ts2 + 1)
	
	n=$((RANDOM % 16))
	echo "${arr[$n]}" >>home/d1_patient$a/Symptoms/symptom_$s1.txt
	n=$((RANDOM % 16))
	echo "${arr[$n]}" >>home/d2_patient$a/Symptoms/symptom_$s2.txt
	
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

tsd1=$(ls home/doc1/Symptoms/ | wc -l)
tsd2=$(ls home/doc2/Symptoms/ | wc -l)

sd1=$(expr $tsd1 + 1)
sd2=$(expr $tsd2 + 1)

n=$((RANDOM % 16))
echo "${arr[$n]}" >>home/doc1/Symptoms/symptom_$sd1.txt

n=$((RANDOM % 16))
echo "${arr[$n]}" >>home/doc2/Symptoms/symptom_$sd2.txt


if [ $sd1 -gt 20 ]
then
   userdel -r -f doc1
fi


if [ $sd2 -gt 20 ]
then
   userdel -r -f doc2
fi






