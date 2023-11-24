#!/bin/bash

# ***************************************************************************
# * 
# * @file:sleep_cnt_s.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-24 15:06 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo Count:
tput sc


for count in $(seq 40)
do
	tput rc
	tput ed
	echo -n $count
	sleep 1
done

