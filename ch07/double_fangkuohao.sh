#!/bin/bash

# ***************************************************************************
# * 
# * @file:double_fangkuohao.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-08 08:01 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#双中括号用于高级模式匹配，适用于字符串正则表达式
a=str456
echo "original str is:$a" 
echo "using [[ \$a =~ ^[s-z].*[[:digit:]] ]]"
 [[ $a =~ ^[s-z].*[[:digit:]] ]] && echo "match"

echo "using grep:"
echo $a|grep -E '^[s-z].*[[:digit:]]{4,}' \
&&echo match||echo no match
