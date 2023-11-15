#!/bin/bash

# ***************************************************************************
# * 
# * @file:case_test.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-15 09:37 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



read -p "input some digit:" a
case "$a" in
	1) echo "first";;
	2) echo "sec";;
	3) echo "third";;
	[4-9]) echo "other one bit";;
	*) echo "invalid";;
esac

