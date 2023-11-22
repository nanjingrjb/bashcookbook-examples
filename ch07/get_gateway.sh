#!/bin/bash

# ***************************************************************************
# * 
# * @file:get_gateway.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-22 13:47 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


#得到路由地址

get_gateway()
{

	traceroute www.sohu.com > route_info.txt

	#得到本机的ip地址，找到对应的网关
	local_ip=$(ifconfig eth0 |gawk '/inet /{print $2}')
	strip_ip=$(echo 172.21.31.23|cut -f 1,2 -d ".") 

	#在路由表中，找到本地的

	gw=$(sed -n "/$strip_ip/{n;p}" route_info.txt|gawk '{print $2}')
	echo $gw

}


