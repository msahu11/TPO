#!/bin/bash
read $1                                                                   
echo $(ls -l  $1  |grep ^d |wc -l)

