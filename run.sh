#!/usr/bin/env bash
cd ..
clear
printf "=======================================================================\n"
#Welcome message
start="autoIO/welcome_message"
while IFS= read -r var
do
  echo "$var"
done < "$start"
#welcome message end
printf "=======================================================================\n"
sleep 1
printf "\t\t Author: Gautam Mishra\n\n"
printf "=======================================================================\n"
sleep 2
printf "\tYour Programs will be compile and run automaticaly\n"
printf "=======================================================================\n"
read -p "Press enter to continue"

for i in *.c
do
		clear
		printf "=======================================================================\n"
		printf "\t\tRunning $i program\n"
		printf "=======================================================================\n"
		sleep 1
    gcc -g3 -o3 $i -o ${i%.c}.out
		./${i%.c}.out <${i%.c}
		printf "\t\tPlease check the outputs\n\n"
		read -p "Press enter to continue"
done

clear
printf "\n=======================================================================\n"
#thankyou message start
end="autoIO/thankyou_message"
while IFS= read -r var
do
  echo "$var"
done < "$end"
#thankyou message end
printf "=======================================================================\n"
