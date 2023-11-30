#!/bin/bash

# ***************************************************************************
# * 
# * @file:svn_log.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-30 09:16 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

spawn svn  log  -l 10  
expect "Password*"
send "scusky111111\n"

interact



