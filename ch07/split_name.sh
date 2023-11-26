#!/bin/bash

# ***************************************************************************
# * 
# * @file:split_name.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-26 14:58 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


name="rjb.jpg"
echo "method1，using %,get file name,type"
ftype=${name#*.}
fname=${name%.*}

echo "fname=$fname,ftype=$ftype"

echo "method2，using awk,get file name,type"
fname=$(echo $name|gawk -F. '{print $1}')
ftype=$(echo $name|gawk -F. '{print $2}')
echo "fname=$fname,ftype=$ftype"

echo "method3，using cut,get file name,type"
fname=$(echo $name|cut -f1 -d.)
ftype=$(echo $name|cut -f2 -d.)
echo "fname=$fname,ftype=$ftype"
