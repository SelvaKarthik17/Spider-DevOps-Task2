#!/bin/bash

groupadd citizens

groupadd d1
groupadd d2

groupadd v1
groupadd v2

useradd corona -m -s /bin/bash -g d1 -G d2 -p $(openssl passwd -1 corona)
useradd doc1 -m -s /bin/bash -g d1 -G citizens -p $(openssl passwd -1 doc1)
useradd doc2 -m -s /bin/bash -g d2 -G citizens -p $(openssl passwd -1 doc2)


a=1

while [ $a -lt 6 ]
do
   useradd d1_patient$a -m -s /bin/bash -g v1 -G citizens -p$(openssl passwd -1 d1_patient$a)
   useradd d2_patient$a -m -s /bin/bash -g v2 -G citizens -p$(openssl passwd -1 d2_patient$a)
  

   a=$(expr $a + 1)
done


mkdir /home/doc1/Vaccines 
mkdir /home/doc1/Symptoms
mkdir /home/doc1/Requests

mkdir /home/doc2/Vaccines
mkdir /home/doc2/Symptoms
mkdir /home/doc2/Requests

while [ $a -lt 6 ]
do
     mkdir /home/d1_patient$a/Symptoms
     mkdir /home/d2_patient$a/Symptoms
     
   a=$(expr $a + 1)
done


while [ $a -lt 6 ]
do
     chgrp d1 /home/d1_patient$a
     chmod g+rwx /home/d1_patient$a
     
     chgrp d2 /home/d2_patient$a
     chmod g+rwx /home/d2_patient$a
     
   a=$(expr $a + 1)
done



chgrp d1 /home/doc1
chmod g+rwx /home/doc1

chgrp d2 /home/doc2
chmod g+rwx /home/doc2

chgrp citizens /home/corona
chmod g+r /home/corona

chgrp v1 /home/doc1/Vaccines
chmod g+r /home/doc1/Vaccines

chgrp v2 /home/doc2/Vaccines
chmod g+r /home/doc2/Vaccines













