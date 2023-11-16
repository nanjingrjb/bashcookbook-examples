#!/bin/bash

# ***************************************************************************
# * 
# * @file:seq_out.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-15 16:38 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo "方法1采用for循环输出5 4 3 2 1"
for((cnt=5;cnt>0;cnt--))
do 
	echo $cnt
done

echo "方法2采用{5..1}序列输出"
for cnt in {5..1}
do echo $cnt
done

echo "方法3采用seq序列，seq first ince last，seq 5 -1 1"
for cnt in $(seq 5 -1 1)
do 
	echo $cnt
done



