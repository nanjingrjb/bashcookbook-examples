#!/bin/bash

# ***************************************************************************
# * 
# * @file:update_svn_220.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-07 15:25 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

info=$(svn update /mnt/e/SRC_220/01_PRJ/APP_220/src)

logger -p local1.notice "更新日志如下："$info

#latest log info

svn log /mnt/e/SRC_220/01_PRJ/APP_220/src -l 3 >info.txt

info=$(cat info.txt)
logger -p local1.notice "最新2条修改日志如下：" {"$info"}

rm info.txt

