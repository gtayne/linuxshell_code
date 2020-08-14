#!/bin/bash
function echo_test()
{
for num in {30..50};do
	echo -e "\e[1;${num}m this is the color of $num"
	#-e 显示转义字符 \e[1;颜色编号（从30开始）m 表示显示颜色
	#当num等于0时， 表示复位颜色
	if [ $num == 50 ];then  
		echo -e "\e[1:0m 恢复颜色"
	fi
done
}
echo_test
