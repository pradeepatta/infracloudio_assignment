#!/bin/bash
# script to generate CSV file "inputFile" with index and random numbers
## Please enter the number of entries you want in CSV file - Enter value above 10 (default 10 lineswill be printed"
rm -f inputFile
if [ $# -eq 0 ] || [ $1 -le 10 ]; then
  echo "no input or value less than 10"
  for i in {0..9}
  do
   random_num=`echo ${RANDOM:0:4}` # random number between 1 and 9999
   echo $i,$random_num >> inputFile
  done
else
  for (( i=0; i<$1; i++ )); 
  do
    random_num=`echo ${RANDOM:0:4}` # random number between 1 and 9999
    echo $i,$random_num >> inputFile
  done
fi
