#!/bin/bash

# ***************************************************************************
# * 
# * @file:wc_file_type.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-26 17:02 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 





            if [ $# -ne 1 ];
            then
              echo "Usage is $0 basepath";
              exit
            fi
            path=$1


            declare -A statarray;

while read line
            do
			ftype=$(file -b "$line" | cut -d, -f);
			echo "$ftype"
			let statarray["$ftype"]++;						done < (find $path -type f -print)
 echo============File types and counts=============
														for ftype in "${!statarray[@]}";
	 do																								              echo $ftype :   ${statarray["$ftype"]}																									              done


