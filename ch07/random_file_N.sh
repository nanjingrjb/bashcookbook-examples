#!/bin/bash

# ***************************************************************************
# * 
# * @file:random_file_N.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-17 14:54 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



if [ -d tmp ]
then
	rm tmp/*
else
	mkdir tmp
fi

#产生oldboy对应的文件
cd tmp
for i in $(seq 10)
do 
	str=$(openssl rand -base64 80|sed 'N;s/[^a-z]//g'|cut -c 2-11)
	touch ${str}_oldboy.html
done


#批量将oldboy改为oldgirl

for i in $(ls *.html)
do
	str=$(echo $i|sed 's/oldboy/oldgirl/g')
	mv $i $str
done


