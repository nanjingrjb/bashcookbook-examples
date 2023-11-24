#!/bin/bash

# ***************************************************************************
# * 
# * @file:grep_main_c.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-24 07:58 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



ls ~/vsftpd-3.0.5/*.c|xargs grep -n "\<main\>"

