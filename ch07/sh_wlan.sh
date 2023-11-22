#!/bin/bash

# ***************************************************************************
# * 
# * @file:sh_wlan.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-22 10:46 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

source /mnt/e/mybash/bashcookbook-examples/ch07/get_gateway.sh
get_phone_ip()
{
	#scan_ip_zone="192.168.3.1/24"
	scan_ip_zone="$(get_gateway)/24"
	ip=$(nmap -sP $scan_ip_zone|gawk '/Nmap scan report for/{print $NF}')
	for i in ${ip[*]}
	do
		{
			res=$(nmap $i -p 8022 2>/dev/null)
			echo $res|grep 'PORT STATE SERVICE 8022/tcp open' >/dev/null
			if [ $? -eq 0 ]
			then
				echo "$i"
			break
			fi
	}
	done
}


ssh_phone()
{
	passwd="123456"
	port=8022
	ip=$(get_phone_ip)
	if [ !  -z $ip ]
	then
		sshpass -p $passwd ssh -p $port "root@"${ip} 
	fi
}

ssh_phone
