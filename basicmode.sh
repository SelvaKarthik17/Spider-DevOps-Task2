#!/bin/bash

groupadd citizens

groupadd d1
groupadd d2

groupadd v1
groupadd v2

useradd corona -m -s /bin/bash -g d1 -G d2 -p $(openssl passwd -1 corona)

a=1
while [ $a -lt 3 ]
do
   useradd doc$a -m -s /bin/bash -g d$a -G citizens -p $(openssl passwd -1 doc$a)
   a=$(expr $a + 1)
done


a=1

while [ $a -lt 6 ]
do
   b=1
   while [ $b -lt 3 ]
   do
      useradd d$b_patient$a -m -s /bin/bash -g v$b -G citizens -p$(openssl passwd -1 d$b_patient$a)

      b=$(expr $b + 1)
   done
  
   a=$(expr $a + 1)
done

a=1
while [ $a -lt 3 ]
do	
   mkdir /home/doc$a/Vaccines 
   mkdir /home/doc$a/Symptoms
   mkdir /home/doc$a/Requests
  a=$(expr $a + 1)
done


a=1
while [ $a -lt 6 ]
do
   b=1
   while [ $b -lt 3 ]
   do
     mkdir /home/d$b_patient$a/Symptoms

     b=$(expr $b + 1)
   done
     
   a=$(expr $a + 1)
done


a=1
while [ $a -lt 6 ]
do
   b=1
   while [ $b -lt 3 ]
   do
     chgrp d$b /home/d$b_patient$a
     chmod g+rwx /home/d$b_patient$a
     
     b=$(expr $b + 1)
   done
     
   a=$(expr $a + 1)
done


a=1
while [ $a -lt 3 ]
do
   chgrp d$a /home/doc$a
   chmod g+rwx /home/doc$a
  a=$(expr $a + 1)
done


chgrp citizens /home/corona
chmod g+r /home/corona

a=1
while [ $a -lt 3 ]
do
   chgrp v$a /home/doc$a/Vaccines
   chmod g+r /home/doc$a/Vaccines
  a=$(expr $a + 1)
done


echo "Covaxin">>home/doc1/Vaccines/vaccine_1.txt
echo "Polio">>home/doc1/Vaccines/vaccine_2.txt
echo "ZyCov-D">>home/doc1/Vaccines/vaccine_3.txt
echo "Favilavir">>home/doc1/Vaccines/vaccine_4.txt
echo "Gimsilumab">>home/doc1/Vaccines/vaccine_5.txt

echo "AdCOVID">>home/doc2/Vaccines/vaccine_1.txt
echo "TJM2">>home/doc2/Vaccines/vaccine_2.txt
echo "AT-100">>home/doc2/Vaccines/vaccine_3.txt
echo "TZLS-501">>home/doc2/Vaccines/vaccine_4.txt
echo "ChAdOx1 nCov-19">>home/doc2/Vaccines/vaccine_5.txt


echo "Cough">>home/d1_patient1/Symptoms/symptom_1.txt
echo "Cold">>home/d1_patient2/Symptoms/symptom_1.txt
echo "Fever">>home/d1_patient3/Symptoms/symptom_1.txt
echo "Sore Throat">>home/d1_patient4/Symptoms/symptom_1.txt
echo "Running nose">>home/d1_patient5/Symptoms/symptom_1.txt

echo "Dry Cough">>home/d2_patient1/Symptoms/symptom_1.txt
echo "Throat pain">>home/d2_patient2/Symptoms/symptom_1.txt
echo "Shortness of breath">>home/d2_patient3/Symptoms/symptom_1.txt
echo "tiredness">>home/d2_patient4/Symptoms/symptom_1.txt
echo "headache">>home/d2_patient5/Symptoms/symptom_1.txt


a=1
while [ $a -lt 6 ]
do
   b=1
   while [ $b -lt 3 ]
   do
    touch home/doc$b/Requests/p$a.txt
   
    chown d$b_patient$a home/doc$b/Requests/p$a.txt
    chmod u+rw home/doc$b/Requests/p$a.txt
   
    b=$(expr $b + 1)
   done

  a=$(expr $a + 1)
done














