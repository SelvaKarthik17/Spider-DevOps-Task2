#!/bin/bash

a=1
while [ $a -lt 6 ]
do
  userdel -r -f d1_patient$a
  userdel -r -f d2_patient$a
done

userdel -r -f doc1

userdel -r -f doc2

userdel -r -f corona

  
  
