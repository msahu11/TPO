#!/bin/bash

inp=$1
txt=$(cat $1)
arr=($txt)
sorted=($(echo ${arr[*]}| tr " " "\n" | sort -nr | uniq))
a=${sorted[0]}
b=${sorted[1]}
sum=$(($a+$b))
prod=$(($a*$b))
echo "$sum"
echo "$prod"

