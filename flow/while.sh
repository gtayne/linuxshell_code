#!/bin/bash
let i=1
while [ $i -le 30 ]
do 
  if [ $i -lt 10 ]
  then 
	username=test0$i
  else
	username=test$i
  fi
  useradd $username
	echo "1" | passwd --stdin $username
	let i++
done
