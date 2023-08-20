clear
echo "Enter 3 numbers"
read a b c
if [ $a -gt $b -a $a -gt $c ] 
then
	if [ $b -gt $c ] 
	then 
		echo "$a is greatest and $c is smallest"
	else
		echo "$a is greatest and $b is smallest"
	fi
elif [ $b -gt $c -a $b -gt $a ]
then
	if [ $a -gt $c ] 
	then 
		echo "$b is greatest and $c is smallest"
	else
		echo "$b is greatest and $a is smallest"
	fi
else
	if [ $b -gt $a ] 
	then 
		echo "$c is greatest and $a is smallest"
	else
		echo "$c is greatest and $b is smallest"
	fi
fi

