#!/bin/bash

a=1
while [ $a -lt 6 ]
do
   b=1
   while [ $b -lt 3 ]
   do
     userdel -r -f d$b_patient$a
     b=$(expr $b + 1)
   done

  a=$(expr $a + 1)
done

a=1
while [ $a -lt 3 ]
do
  userdel -r -f doc$a
  a=$(expr $a + 1)
done

userdel -r -f corona

  
  
