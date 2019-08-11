#!/bin/bash

inpFle=$1
touch temp.txt


while read line
do

IFS=","
spaceLine=($line)
teamName=${spaceLine[0]}
stud1=${spaceLine[1]}
stud1RollNum=${spaceLine[2]}
stud2=${spaceLine[3]}
stud2RollNum=${spaceLine[4]}
stud3=${spaceLine[5]}
stud3RollNum=${spaceLine[6]}
echo "$teamName,$stud1,$stud1RollNum" >> temp.txt
echo "$teamName,$stud2,$stud2RollNum" >> temp.txt
echo "$teamName,$stud3,$stud3RollNum" >> temp.txt
done < $1

cat temp.txt | sort  > output
rm temp.txt

