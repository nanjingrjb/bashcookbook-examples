#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_cp.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-12 17:25 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



find . -name "*ip*" -exec cp {} ./tmp  \;
#find . -name "*ip*" |xargs -i cp {} ./tmp
echo "after copy ,ls is:"
ls ./tmp

find ./tmp -name "*ip*" |xargs -i rm {}
echo "after delete:"
ls .
