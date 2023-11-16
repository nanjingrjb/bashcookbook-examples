#!/bin/bash

# ***************************************************************************
# * 
# * *file:arr_op.sh 
# * *author:nanjingrjb*gmail.com 
# * *date:2023-11-16 10:38 
# * *version 1.0  
# * *description: Shell script 
# * *Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



arr=(1 2 3)
show_arr()
{
	local arr=$(echo $1)
	for i in "${arr[*]}"
	do 
		echo $i
	done
}
add_arr()
{
	org="$1"
	add="$2"
	for i in "${add[*]}"
	do 
		org="$org $i"
	done
	echo ${org[*]}
}

inset_arr=(4 5)
echo "arr is :"
show_arr "${arr[*]}"

echo "insert arr is :"
show_arr "${inset_arr[*]}"

echo "after inset arr is:"
add_arr "${arr[*]}"  "${inset_arr[*]}"
