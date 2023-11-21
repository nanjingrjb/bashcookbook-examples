#!/bin/bash

# ***************************************************************************
# * 
# * @file:ping_lan.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-21 16:38 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

start=$(date +%s)
echo "start:$start"
ip="192.168.3."
for i in $(seq 254)
do
	{
		ping -W 2 -c 2 "$ip$i" &>/dev/null
		if [ $? -eq 0 ]
		then
			echo "ok:$ip$i"
		fi
	}&
done

end=$(date +%s)
echo "end:$end"
wait 
time=$[$end-$start]

echo "time:$time"
