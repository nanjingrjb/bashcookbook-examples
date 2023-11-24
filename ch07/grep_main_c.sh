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
echo "xargs 可将多行转为单行输出，如:cat ls.txt|xargs"
cat ls.txt|xargs
echo "xargs 可将多行转为指定行数输出，如:cat ls.txt|xargs -n 26"
cat ls.txt|xargs -n 33


echo "xargs -I {} cmd {}可以逐一对列表输入进行处理，如果需要对输入加入#\
	,命令如下：echo -e \"echo -e 123\n234 |xargs -I {} bash cecho.sh {}\""

echo -e "123\n234\n456"|xargs -I {} bash cecho.sh {}
echo "xargs -I {} cmd {}可以逐一对列表输入进行处理，如果需要对输入加入#\
	,并且在指令前添加其他命令参数，命令如下：echo -e \"echo -e 123\n234 |xargs -I {} bash cecho.sh -m  {} -over\""

echo -e "123\n234\n456"|xargs -I {} bash cecho.sh -start1 -start2 {}\
	-end1 -end2

echo "一种更简洁的做法，就是灵活理解\{\}，命令如下:echo -e \"123\n234\n456\"|xargs -I {} echo \"-start {} -end #"
echo -e "123\n234\n456"|xargs -I {} echo "-start {} -end #"
