#!/bin/bash

# ***************************************************************************
# * 
# * @file:expr_let.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-24 14:22 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



a=2
b=5
let add_c=a+b
let sub_c=a-b
let mul_c=a*b
let div_c=a/b

echo "$a+$b=$add_c"
echo "$a-$b=$sub_c"
echo "$a*$b=$mul_c"
echo "$a/$b=$div_c"
