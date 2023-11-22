#!/bin/bash

# ***************************************************************************
# * 
# * @file:nmap_lan.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-21 17:12 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



ip="192.168.3.1/24"
cmd="nmap -Pn"

$cmd $ip|gawk '/Nmap scan report for/ {print $NF}'

