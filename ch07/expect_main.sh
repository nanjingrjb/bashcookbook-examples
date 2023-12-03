#!/bin/bash

# ***************************************************************************
# * 
# * @file:expect_main.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-30 17:59 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



read -p  "input your name:" name
read -p  "input your age:" age

echo "info is below:"
echo "name:$name"
echo "age:$age"

read -p "are you sure?(yes/no)" yes
 if [  $yes = 'y' -o $yes = 'Y' ]
 then
	 echo "i will save your info."
	 echo -e "$name\t\t $age\n" >> info_all.txt
 elif [  $yes = 'n' -o $yes = 'N' ]
	 then echo "please input again."
	 exit 1
fi

