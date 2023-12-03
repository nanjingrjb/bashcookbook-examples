#! /bin/bash

get_220_xp()
{
	if [ ! "$#" -eq 1 ]
	then
		echo "usage $0:icd_dir_contain_all_icd"
		exit
	fi

	icd_path=$1
	echo "path=$icd_path"
   ls $icd_path| grep -E 'V[0-9]\.[0-9][0-9].*\.icd'|cut -d- -f5|xargs |\
		sed '/[0-9]+/d'|sed -E 's/[ ]+/,/g' >xp.txt
}

get_220_xp $*
