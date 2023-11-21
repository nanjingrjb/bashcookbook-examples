#!/bin/bash

# ***************************************************************************
# * 
# * @file:ping_active.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-21 16:08 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



for i in $(seq 254)
do
	{
		ping -c 2 -W 2 "172.21.62.$i" &>/dev/null 
		if [ $? -eq 0 ]
		then echo "ok:172.21.62.$i"
		fi
	}&
done 

