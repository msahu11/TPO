#!/bin/bash

touch output
cat $1 > temp.txt

sed -e 's/[mM][iI][gG][hH][tT][yY]/dumb/g'  temp.txt > output

rm temp.txt
