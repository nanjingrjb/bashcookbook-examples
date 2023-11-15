#!/bin/bash

# ***************************************************************************
# * 
# * @file:until.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-15 15:45 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

cnt=1
if [ ! $# -eq 1 ]
then
	echo "usage:$0 int,add sum from 1 to int"
else

	until [ $cnt -gt $1 ]
	do
		sum=$[sum+$cnt]
		cnt=$[cnt+1]
	done
	echo "sum=$sum"
fi

