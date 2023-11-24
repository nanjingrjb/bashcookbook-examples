#!/bin/bash

# ***************************************************************************
# * 
# * @file:show_proc_env.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-24 10:46 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



sudo cat /proc/472/environ|tr '\0' '\n'

