#!/bin/bash

# ***************************************************************************
# * 
# * @file:checkUrl.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-17 09:18 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



checkOneUrl()
{
	url="$1"
	wget -T 3 -tries=1 --spider "$url" >/dev/null 2>&1
	if [ $? -gt 0 ]
	then
		echo "bad address :$url"
	else
		echo "valid url:$url"
	fi
}

url_list=("http://blog.oldboyedu.com"
		  "http://blog.etiantian.org"
		  "http://oldboy.blog.51cto.com"
		  "http://10.0.0.7"
		  "https://njrjb.e3.luyouxia.net"

)

checkUrlList()
{
	for i in ${url_list[*]}
		do
			echo $i
			checkOneUrl "$i"
		done

}

checkUrlList

