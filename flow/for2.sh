for ((i=1;i<=15;i++))
do
	if [ $i -lt 10 ];then
		username=test0$i
	else
		username=test$i
	fi
id $username &> /dev/null && userdel -r $username || echo "$username not exist"
done
