clear
echo "Enter a limit"
read n
echo "Fibonacci numbers = "
a=0
b=1
if [ $n -ge 1 ]
then
	printf "$a "	
fi

if [ $n -ge 2 ]
then
	printf "$b "	
fi

if [ $n -ge 1 ]
then
	for (( i=3;i<=n;i++ ))
	do
		c=$(( a+b ))
		printf "$c "
		a=$b
		b=$c
	done
fi

echo ""
