#!/bin/bash

# ***************************************************************************
# * 
# * @file:word_test.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-16 14:47 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

#

cont="I am oldboy teacher welcome to oldboy training class"

comp_str_using_echo()
{
	local cont=$(echo "$1")
	for i in ${cont[*]}
	do
		str=$(echo "$i")
		[ ! ${#str} -gt  6 ] && echo $i
	done
}

awk_str()
{
	echo "$1"|gawk '{
		for (i=1;i<NF+1;i++)
			{
				if(length($i)<=6)
					print $i
			}
	}'

}
echo "method 1,using echo str,res is :"
comp_str_using_echo "${cont[@]}"
echo "method 2,using awk,res is :"
awk_str "${cont[@]}"

str="raojianbo"
exp_str=\"\${#str}\"
echo "cal signal $str length method:"
echo "method 1,using $exp_str,length is:"${#str}
echo "method 2,using expr length str,length is:"$(expr length $str)
echo "method 3,using awk length function,length is:"$(echo $str| gawk '{print length($0)}')
echo "method 4,using echo |wc -L,length is:"$(echo $str|wc -L)
