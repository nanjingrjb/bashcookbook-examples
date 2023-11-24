#!/bin/bash

# ***************************************************************************
# * 
# * @file:ifs_str.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-24 15:36 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



        line="root:x:0:0:root:/root:/bin/bash"
        oldIFS=$IFS;
        IFS=":"
        count=0
        for item in $line;
        do         
			[ $count -eq  0 ]    && user=$item;
            [ $count -eq 6 ]   && shell=$item;
        let count++
	    done
    IFS=$oldIFS
echo "$user's shell is $shell"

echo "using gawk parse: "
usr=$(echo $line|gawk -F: '{print $1}')
shll=$(echo $line|gawk -F: '{print $7}')

echo "$usr's shell is $shll"
