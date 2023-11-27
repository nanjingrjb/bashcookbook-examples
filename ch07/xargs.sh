#!/bin/bash

# ***************************************************************************
# * 
# * @file:xargs.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-27 10:20 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#采用xargs进行数据的分隔解析

get_str_from_token()
{
	str="$1"
	token="$2"

	echo $str|tr "$token" " "|xargs -n 1|  echo sum=$[$(tr '\n' '+') 0]
}

get_str_from_token "123\rty\234\rty\89" "rty"
get_str_from_token $*
