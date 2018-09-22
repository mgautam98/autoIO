#!/usr/bin/env bash
print(){
  start=$1
  while IFS= read -r var
  do
    echo "$var"
  done < "$start"
}

gcc -g3 -o3 test_case_check.c -o test_case_check.out
cd ..
clear
printf "=======================================================================\n"
print autoIO/welcome_message
printf "=======================================================================\n"
sleep 1
printf "\t\t Author: Gautam Mishra\n\n"
printf "=======================================================================\n"
sleep 1
printf "\tYour Programs will be compile and run automaticaly\n"
printf "=======================================================================\n"
read -p "Press enter to continue"
clear
for i in *.c
do
		printf "=======================================================================\n"
		printf "\t\tRunning $i program\n\n"
		sleep 1
    gcc -g3 -o3 $i -o ${i%.c}.out
		./${i%.c}.out <tc.${i%.c} >output.${i%.c}
		#printf "\t\tPlease check the outputs\n\n"
    ./autoIO/test_case_check.out output.${i%.c} tc.output.${i%.c}
    printf "=======================================================================\n"
done
read -p "Press enter to continue"
clear
printf "\n=======================================================================\n"

print autoIO/thankyou_message
# printf "\n\tFind the output of an program (filename) in 'outputs.filename'\n"
printf "=======================================================================\n"
