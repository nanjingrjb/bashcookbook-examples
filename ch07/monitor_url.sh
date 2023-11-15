#!/bin/bash

# ***************************************************************************
# * 
# * @file:monitor_url.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-15 15:57 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



        if [ $# -ne 1 ]; then               #＜==判断，若传参的个数不为1，
            echo $"usage $0 url"            #＜==则打印正确使用提示。
            exit 1                          #＜==以返回值1退出脚本。
        fi
        while true                          #＜==永远为真，进入while循环。
        do
            if [ `curl -o /dev/null --connect-timeout 5 -s -w "%{http_code}"   $1|
    egrep -w "200|301|302"|wc -l` -ne 1 ]
            #＜==对传入的URL参数获取状态码，过滤200、301、302任意之一转为数字，如果不等于1，
              then
                echo "$1 is error."         #＜==提示URL访问错误。
                #echo "$1 is error."|mail -s "$1 is error." 31333741--@qq.com
                                            #＜==发送邮件报警。
            else
                echo "$1 is ok"             #＜==否则，提示URL访问OK。
            fi
            sleep 10   #＜==休息10秒继续执行while循环，注意，当while后面有true等永远为真
        done

