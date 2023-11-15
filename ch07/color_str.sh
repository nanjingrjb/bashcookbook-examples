#!/bin/bash

# ***************************************************************************
# * 
# * @file:cloer_str.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-15 10:38 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
set_color()
{
	case "$1" in
		"黑色") echo "30m";;
		"红色") echo "31m";;
		"绿色")echo "32m";;
		"棕色")echo "33m";;
		"蓝色")echo "34m";;
		"洋红")echo "35m";;
		"蓝绿")echo "36m";;
		"白色")echo "37m";;
		*)echo "30m"
	esac
}

set_content_color()
{
	colstr="$1"
	cont="$2"

	colFlg=$(set_color $colstr)
	set_str_cont="\033[$colFlg \"$cont\" \033[0m"

	echo -e "$set_str_cont"
}

color=("黑色" "红色" "绿色" "棕色" "蓝色" "洋红" "蓝绿" "白色")
for i in "${color[@]}"
do
	set_content_color "$i" "饶家齐 饶剑波 闻婧"
done
