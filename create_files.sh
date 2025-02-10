#!/bin/bash

#The -p creates the directory if it doesn't exist
mkdir -p students-directory

#C-style for loop
for  ((i = 1; i <= 25; i++));
do
touch students-directory/cohort-$i.txt
#echo "Counter: $i"
done

#make a for loop to create 3 files
#for i in 1 2 3
#do
#touch students_directory/cohort-$i.txt
#done
