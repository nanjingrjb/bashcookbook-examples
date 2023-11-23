#!/bin/bash

# ***************************************************************************
# * 
# * @file:longest-word3.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-23 13:06 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 

#!/bin/bash

# longest-word3: 从文件中查找长字符串

for i; do
      if [[ -r "$i" ]]; then
            max_word=
            max_len=0
            for j in $(strings $i); do
                  len="${#j}"
                  if (( len > max_len )); then
                        max_len="$len"
                        max_word="$j"
                  fi
            done
            echo "$i: '$max_word' ($max_len characters)"
      fi
done
