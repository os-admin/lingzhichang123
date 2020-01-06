#!/usr/bin/env bash

num = $*;
if(num < 1)
then
    echo "Command not found "
    exit 1
fi
option    # -d选项

# os=`uname -s`   #os 为操作系统名

# for f in *.* 

# for f in *.ts tsconfig.json; do echo "//$f"; cat $f >> tmp.txt ;echo -e "\n";done 

# case $os in     #判断为那个操作系统
# #Linux
# 	Linux)
# 		for f in *.ts tsconfig.json; do echo "//$f"; cat $f;echo -e "\n";done | xclip -sel clip
# 		echo "success"	
# 	;;
# #Macos
# 	Darwin)
# 		 for f in *.ts: tsconfig.json;do echo "//$f"; cat $f;echo;done | pbcopy 
#                 echo "success"  

# 	;;
# 	*)
# 		echo -e "OS '$os' not suppose yet"
# 		exit 1;
# esac

