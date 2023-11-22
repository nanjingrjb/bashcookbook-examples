#!/bin/bash

# ***************************************************************************
# * 
# * @file:route_show.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-22 18:15 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



traceroute www.sohu.com|gawk '/ms/{print $2}'|sed '/*/d'

