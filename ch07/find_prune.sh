#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_prune.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-25 07:16 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


cd ..
#排除.git文件夹，显示正常文件
find . -name '.git' -prune -o -type f

