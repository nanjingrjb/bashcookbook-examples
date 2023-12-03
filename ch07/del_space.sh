#!/bin/bash

# ***************************************************************************
# * 
# * @file:del_space.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-01 10:19 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



echo -e "x 12 ui    dff\n  sdd 90 dd    fff\n  sss ddd 90ff\n"\
 |tee old.txt|sed 's/ //g'|tee new.txt

echo "old string is:"
cat old.txt

echo "using sed \'s/ //g\'after delete space is:"
cat new.txt

