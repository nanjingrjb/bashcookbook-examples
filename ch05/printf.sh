#!/bin/bash

# ***************************************************************************
# * 
# * @file:printf.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-10 16:08 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




func()
{
	echo "this is a test for printf"
	weight=(40.5 34 45 39)
	name=(tom alice jim lucy)

	len=${#name[@]}
	echo "$len"
	printf '%s\t\t%s(kg)\n'  name weight
	for ((cnt=0;cnt<len;cnt++))
	do
		printf '%s\t\t%1.3f\n'   "${name[$cnt]}" "${weight[$cnt]}"
	done
}


func
