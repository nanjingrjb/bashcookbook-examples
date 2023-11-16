#!/bin/bash

# ***************************************************************************
# * 
# * @file:break.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-16 09:36 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


        if [ $# -ne 1 ]; then       #＜==如果传参个数不为1，则打印下面的使用提示给用户。
            echo $"usage:$0 {break|continue|exit|return}"  #＜==分别传入4个命令作为参数。
            exit 1                  #＜==退出脚本。
        fi
        test(){                     #＜==定义测试函数。
            for((i=0; i<=5; i++))
            do
                if [ $i -eq 3 ] ; then
                    $*;            #＜==这个地方的“$＊”就是接收函数外的参数，将来就 {break|continue|exit|return}中的一个。
                fi
                echo $i
            done
            echo "I am in func."                               #＜==循环外的输出提示。
        }
        test $*                                               #＜==这里的“$＊”为函数的传参。
        func_ret=$?                                            #＜==接收并测试函数返回值。
        if [ `echo $*|grep return|wc -l` -eq 1 ]              #＜==如果传参有return。
          then
            echo "return's exit status:$func_ret"              #＜==则提示return退出状态。
        fi
        echo "ok"                                              #＜==函数外的输出提示。

