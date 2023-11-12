#!/bin/bash

# ***************************************************************************
# * 
# * @file:sort_ip.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-12 09:46 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n ipaddr.list 

