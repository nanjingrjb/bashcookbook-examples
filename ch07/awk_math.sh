#!/bin/bash

# ***************************************************************************
# * 
# * @file:awk_math.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-14 10:36 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


echo "$1 $2"|gawk '{print $1*$2}'

