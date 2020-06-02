#!/usr/bin/env bash

function Compare {
  if  [[ $1 -eq $number_of_files ]]
  then
    gess_is_correct=0
    echo "CONGRATULATIONS, YOU ENTERED THE CORRECT NUMBER!!!"
    echo "Thanks for playing"
  elif [[ $1 -gt $number_of_files ]]
  then
    echo "Sorry, your number is too high, please try again."
  else
    echo "Sorry, your number is too low, please try again."
  fi
}

number_of_files=$(find . -maxdepth 1 -type f | wc -l)

gess_is_correct=1
while  [[ $gess_is_correct -ne 0 ]] 
do
  echo 'Please, enter the number of files on the folder: '
  read user_gess
  Compare $user_gess
done