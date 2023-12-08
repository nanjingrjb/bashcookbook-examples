#!/bin/bash

# ***************************************************************************
# * 
# * @file:str_op.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-08 10:51 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#字符串操作测试
a=abc12342341
echo "original a is:" $a
echo "1、取得字符串长度：\${#a}"
echo "长度:${#a}"
echo "using expr length:"
expr length $a
echo "using \$a :"
expr "$a"  : ".*"
echo "2、取得字符子串索引：expr index \$a '123' "
echo "123 in $a index is:"
expr index $a "123"

echo "3、字符串截取"
echo ${a:4}   #2342341 从第4位开始截取后面所有字符串
echo ${a:3:3}  #123   从第3位开始截取后面3位
echo ${a:3:6}  #123423  从第3位开始截取后面6位
echo ${a: -4}  #2341 ：右边有空格  截取后4位
echo ${a:(-4)}  #2341 同上
expr substr $a 3 3  #123 从第3位开始截取后面3位

