#!/bin/bash

# ***************************************************************************
# * 
# * @file:expr_math.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-13 11:04 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
checkint()
{
	a="$1"
	expr $a + 1 &>/dev/null 
	if [ $? -eq 0 ]  
	then echo 1
	else
		echo 0
	fi
}

if [ "$#" -eq 2 ] 
then
	if [ $(checkint "$1") -eq 1 -a $(checkint "$2") -eq 1 ]
	then

		echo "$1+$2=$(expr $1 + $2)"
		echo "$1-$2=$(expr $1 - $2)"
		echo "$1*$2=$(expr $1 \* $2)"
		echo "$1/$2=$(expr $1 / $2)"
	else
		echo "input 2 ints."
	fi
else
	echo "usage: $0 int1 int2 "
fi
