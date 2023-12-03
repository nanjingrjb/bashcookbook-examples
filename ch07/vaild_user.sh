#!/bin/bash

# ***************************************************************************
# * 
# * @file:vaild_user.sh 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-12-03 15:46 
# * @version 1.0  
# * @description: Shell script 
# * @Copyright (c)  all right reserved 
#* 
#**************************************************************************/ 


valid_user()
{
	if [ $# -ne 1 ]
	then
		echo "usage:$0 username"
		exit 1
	fi

	user="$1"
	new=$(echo $user|sed 's/[^[:alnum:]@_?]//g')
	if [ "$new" = "$user" ]
	then 
		echo "valid user:$user"
	else
		echo "invalid user name."
	fi
}

in_path()
{

	if [ $# -ne 1 ]
	then
		echo "usage:$0 cmd"
		exit 1
	fi

	cmd="$1"
	if [ ${cmd:0:1} = '/' ]
	then
		if [ -x $cmd ]
		then
			echo "$cmd in path."
		else
			echo "$cmd not exeuse."
		fi
	else
		path=$(echo $PATH|gawk -F: \
			'{
		      for(i=1;i<=NF;i++)
				  print $i;
			  }')
		for i in $path
		      do
		   	  if [ -e $i/$cmd ]
			  then 
				  echo "$cmd in path".
			      exit 0
			  fi
		done
         echo "$cmd not in path".
	fi
}


in_path $*


