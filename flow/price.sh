#!/bin/bash
price=$[RANDOM%1000]
times=0
guess=0
while true
do 
  read -p "输入猜的价格：" i
  let times++
  if [ $i == $price ];then
	echo "恭喜猜对了"
	echo “你一共踩了$times 次”
	exit 0
  elif [ $i -gt $price ];then
	echo "猜大了"
  else
	echo "猜小了"
  fi
done
