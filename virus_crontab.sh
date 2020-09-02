#!/bin/bash

user=$(whoami)

alias symptomSchedule="./symptom_auto_create.sh"

if [ "$user" = "corona" ]
then
 crontab -l | sed "\$a0 12 * * * symptomSchedule" | crontab -

else
  echo "User not authorized to run the script"
fi
  

