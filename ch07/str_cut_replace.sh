#!/bin/bash

# ***************************************************************************
# * 
# * @file:str_cut_replace.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-23 11:01 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 
foo="JPG.JPG.JPG.JPG.JPG"
echo "origin str=$foo"

echo "first replace,using cmd: \${foo/JPG/jpg}"
echo ${foo/JPG/jpg}
echo "all replace,using cmd: \${foo//JPG/jpg}"
echo ${foo//JPG/jpg}
echo "left first replace,using cmd: \${foo/#JPG/jpg}"
echo ${foo/#JPG/jpg}
echo "right first replace,using cmd: \${foo/%JPG/jpg}"
echo ${foo/%JPG/jpg}
