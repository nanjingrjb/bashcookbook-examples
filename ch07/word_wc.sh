#!/bin/bash

# ***************************************************************************
# * 
# * @file:word_wc.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-29 08:48 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 





        if [ $# -ne 1 ];
        then
          echo "Usage: $0 filename";
          exit -1
        fi


        filename=$1
        egrep -o "\b[[:alpha:]]+\b" $filename | tee mid_word.txt|\
          awk '{ count[$0]++}
            END{ printf("%-14s%s\n","Word","Count") ;
              for(ind in count)
                { printf("%-14s%d\n",ind,count[ind]);
                }
              }'

