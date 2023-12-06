#!/bin/bash

# ***************************************************************************
# * 
# * @file:find_root.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-06 08:06 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



find ~ \( -path ~/.vim -o -path ~/.subversion -o -path ~/.rpmdb -o -path ~/.cache  -o -path ~/vsftpd-3.0.5 \) -prune -type f -o -name "*.txt" -print

