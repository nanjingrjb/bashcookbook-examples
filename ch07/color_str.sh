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
set_back()
{

	case "$2" in
		"黑色") echo "40";;
		"红色") echo "41";;
		"绿色")echo "42";;
		"棕色")echo "43";;
		"蓝色")echo "44";;
		"洋红")echo "45";;
		"蓝绿")echo "46";;
		"白色")echo "47";;
		*)echo "40"
	esac
}
set_content_color()
{
	colstr="$1"
	colback="$2"
	cont="$3"

	colFlg=$(set_color $colstr)
	backFlg=$(set_back $colback)
	set_str_cont="\033[$backFlg;$colFlg \"$cont\" \033[0m"

	echo -e "$set_str_cont"
}

color=("黑色" "红色" "绿色" "棕色" "蓝色" "洋红" "蓝绿" "白色")
for i in "${color[@]}"
do
	set_content_color "$i"  "$i"  "饶家齐 饶剑波 闻婧"
done
