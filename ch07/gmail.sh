#!/bin/bash

# ***************************************************************************
# * 
# * @file:gmail.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-03 11:43 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 



#!/bin/bash
        #用途: Gmail邮件读取工具


        username='raojianbo'
        password='scusky111111'


        SHOW_COUNT=5     # 需要显示的未读邮件数量


        echo
        curl   -u $username:$password --silent \
              "https://mail.google.com/mail/feed/atom"

