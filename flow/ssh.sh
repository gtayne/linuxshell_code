#!/bin/bash
while read line
do 
  IP=`echo $line | cut -d' ' -f1`
  PORT=`echo $line |cut -d' ' -f2`
  echo "ip:$IP, port:$PORT"
  ping $IP -c 2 -W 3 -i 0.5 &>/dev/null
  [ $? -eq 0 ] && echo "$IP IS ALIVE" || echo "$IP IS DEAD"
done < ip.txt
