#!/bin/bash

# ***************************************************************************
# * 
# * @file:script_reply.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-24 22:05 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



script -t 2> timing.log -a output.session
scriptreplay timing.log output.session

