#!/bin/bash

# ***************************************************************************
# * 
# * @file:answer.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-03 17:28 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


answer()
{
    read -p "input your answer: " answer

    echo $answer|cut -c1|grep -i y
    if [ $? -eq 0 ]
    then
	   echo ok
    else
	   echo no
     fi
}


grep_cmd()
{
	cmd="$1"
	prefix="$2"

	if [ ${prefix:0:1} = '-' ] 
	then
	     help $cmd |grep -w "\\$prefix"
    else
	     help $cmd |grep -w "$prefix"
	fi
}

grep_cmd $*
