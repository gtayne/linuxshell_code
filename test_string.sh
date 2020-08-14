#!/bin/bash
read -p "输入字符串" a 
if [ -z $a ];then
	echo "a为零"
else
	echo "a不为零"
fi
