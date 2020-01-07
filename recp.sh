#!/usr/bin/env bash
if [ $# -lt 1 ]
then 
    echo "Command not found "
    exit 1
fi

#判断系统类型
os=`uname -s`

if [ "$os" = "Linux" ];
then 
    stickType="xclip -sel clip"
fi

if [ "$os" = "MacOS" ];
then
    stickType="pbcopy"
fi

#循环判断命令后面的参数且给出相应的注释 ,最后输出到相应系统的剪贴板上
for i in $*
    do   
        #extension--拓展名, ${i##*.}为获取文件拓展名
        extension=${i##*.}; 

        #case根据拓展名加相应的注释
        case $extension in 
            sql)
            echo "--$i"
            ;; 

            sh | py | ruby)
            echo "#$i"
            ;;

            java | c | cpp | cs | php | ts )
            echo "//$i"
            ;;

            *)  
            echo "Not support $extension file to re-copy"
            ;; 
        esac 
        #每次判断完就获取相应文件的内容 
        cat $i 

    done | $stickType

