#!/bin/bash

# ***************************************************************************
# * 
# * @file:rand_str.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-17 14:15 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#使用openssl结合相关的处理，来产生需要的随机数据

echo "create random 10 digits:"

openssl rand -base64 80 >rand.txt
echo "origin data is:"
cat rand.txt

echo "data is:"
cat rand.txt|sed 'N;s/[^0-9]//g'>data.txt
cat data.txt

echo "10 digits is:"
cat data.txt|cut -c 1-10



