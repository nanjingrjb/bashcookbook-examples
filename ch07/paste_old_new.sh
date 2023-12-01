#!/bin/bash

# ***************************************************************************
# * 
# * @file:paste_old_new.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-01 10:35 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


#采用paste用于合并2个文件，将各列对齐，其中2列之间用,分割
#对于最后一行有，则删除。

paste  old.txt new.txt -d ","|sed '$d'

