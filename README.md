# Spider-DevOps-Task2

execute basicmode.sh as a root user (or with sudo) to create users,groups, assign permission for the directories and creating files required in the basic mode.

(NOTE:- Login facility mentioned in hackermode is done during the user creation itself ,i.e in basicmode.sh )

  HACKERMODE:-
	
  	=> virus_create_symptom.sh is the script to be run by the Virus(corona) to create symptoms in any citizen's Symptoms directory
  
  	=> create_vaccine.sh is the script for the doctors to create new vaccines
  
  	=> patient_request.sh is the script for patients to rrequest the doctors for vaccines , by giving the required parameters (as mentioned in <3.b> of the DevOps_Task2.pdf)
  
  	=> delete_symptoms.sh script is for the doctors to delete the symptom files in any of the patients
  
  	=> symptom_auto_create.sh is the script for generating and assigning random symptoms to all citizens
  
  	=> virus_crontab.sh is the script to be run by the Virus to assign Cron Job (for scheduling execution of symptom_auto_create.sh at 12 noon daily)
  
  	(NOTE:- The feature for deleting users after exceeding 20 symptoms is included in all scripts associated with symptom creation, and is therefore not made as a separate script)
