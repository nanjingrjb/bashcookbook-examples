#!/bin/bash

# ***************************************************************************
# * 
# * @file:origin_checkUrl.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-17 09:47 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 




        check_count=0
        url_list=(                           #＜==定义检测的URL数组，包含多个URL地址。
        http://blog.oldboyedu.com
        http://blog.etiantian.org
        http://oldboy.blog.51cto.com
        http://10.0.0.7
        )

        function wait()                      #＜==定义3,2,1倒计时函数。
        {
            echo -n '3秒后，执行检查URL操作．';
            for ((i=0; i<3; i++))
            do
                echo -n "."; sleep 1
            done
            echo
        }
        function check_url()                 #＜==定义检测URL的函数。
        {
            wait                             #＜==执行倒计时函数。
            for ((i=0; i<`echo ${#url_list[*]}`; i++)) #＜==循环数组元素。
            do
                wget -o /dev/null -T 3 --tries=1 --spider ${url_list[$i]} >/dev/null 2>&1
                                             #＜==检测是否可以访问数组元素的地址。
                if [ $? -eq 0 ]              #＜==如果返回值为0，则表示访问成功。
                  then
                    echo "success,${url_list[$i]}"  #＜==优雅地显示成功结果。
                else
                    echo "failed,${url_list[$i]}"  #＜==优雅地显示失败结果。
                fi
            done
            ((check_count++))                                  #＜==检测次数加1。
        }
        main(){                                                #＜==定义主函数。
            while true                                         #＜==开启一个持续循环。
            do
                check_url                                      #＜==加载检测url的函数。
                echo "-------check count:${check_count}---------"
                sleep 10                                       #＜==间歇10秒。
            done
        }
        main                                                   #＜==调用主函数运行程序。

