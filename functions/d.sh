#!/bin/bash
test_url(){
if [ $# -ne 1 ];then
	echo "usage:$0 url"
	exit 1
fi
wget --spider -q -o /dev/null --tries=1 -T 5 $1
if [ $? -eq 0 ];then
	echo "$1 is ok"
else
	echo "$1 is not ok"
fi
}
#test_url www.baidu.com
