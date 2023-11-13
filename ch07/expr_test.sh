#!/bin/bash

# ***************************************************************************
# * 
# * @file:expr_test.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-13 10:57 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



expr $1 + 1 >/dev/null 2>&1
[ $? -eq 0 ] && echo "int"||echo "chars"

while true
do read -p "pls input:" a
	expr $a + 1 >/dev/null 2>&1
	[ $? -eq 0 ] &&echo int ||echo chars
done
