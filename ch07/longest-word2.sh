#!/bin/bash

# ***************************************************************************
# * 
# * @file:longest-word2.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-23 13:08 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#!/bin/bash

# longest-word2: 在文件中查找长字符串
set -x
for i; do
      if [[ -r "$i" ]]; then
            max_word=
            max_len=0
            for j in $(strings "$i"); do
                  len="$(echo -n "$j" | wc -c)"
                  if (( len > max_len )); then
                        max_len="$len"
                        max_word="$j"
                  fi
            done
            echo "$i: '$max_word' ($max_len characters)"
      fi
done
set +x
