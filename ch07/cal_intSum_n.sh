#!/bin/bash

# ***************************************************************************
# * 
# * @file:cal_intSum_n.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-27 11:01 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

cal_int_sum()
{
	[ $# -ne 1 ] &&
		{
			echo "usage:$0 int" 
			exit 1
		}

	echo "$1"|grep '^-' >/dev/null
	if [ $? -eq 0 ] 
	then
		real=$[$1*(-1)]
		seq $real|echo sum='-'$[ $(tr '\n' '+') 0] 
	else
		seq $1|echo sum=$[ $(tr '\n' '+') 0] 
	fi

}

cal_int_sum $*
