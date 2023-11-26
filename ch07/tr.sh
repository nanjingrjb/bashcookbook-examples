#!/bin/bash

# ***************************************************************************
# * 
# * @file:tr.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-25 07:58 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo "Hello 123 world 456" | tr -d '0-9'
echo "Hello 123 world 456" | tr '0-9' '9876543210'

echo hello 1 char 2 next 4 | tr -d -c 'a-m0-9 \n'
 echo "GNU is         not      UNIX. Recursive    right ?" | tr -s ' '
echo "tr -s用于删除多余的字符，而tr -d 用于删除所有指定字符。"


cat muline.txt |tr -s '\n'

echo "1 2 3 4 5" >sum.txt
cat sum.txt|echo $[$(tr " " "+")]

echo sum=$[$(cat muline.txt|tr -s '\n'|tr -d 'a-z'|tr '\n' '+'|xargs |tee my.txt) 0]

