#!/bin/bash

# ***************************************************************************
# * 
# * @file:redir.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-23 08:20 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


echo "标准输出，错误不显示，ls -D ./ nodir 2>/dev/null"
ls -D ./ nodir 2>/dev/null
echo "标准输出、错误均不显示，ls -D ./ nodir &>/dev/null"
ls -D ./ nodir &>/dev/null
echo $?
echo "标准输出,错误不显示，后台执行 ls -D ./ nodir 2>/dev/null &"
ls -D ./ nodir 2>/dev/null 
echo "后台执行结果:$?"
