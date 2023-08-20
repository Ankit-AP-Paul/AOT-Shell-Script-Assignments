factorial()
{
	n=$1
	if [ $n -le 0 ]
	then 
		echo 1
	else
		echo $(( n * `factorial $(( n-1 ))` ))
	fi
}

printf "Enter x = "
read x
printf "Enter n = "
read n
t=0
sum=0
for (( i=1;i<=n;i++ ))
do
	term=`echo "scale=3; $x^$t/\` factorial $t \`"|bc`
	t=$(( t+2 ))
	sum=`echo "scale=3; $sum+$term"|bc`
done
echo "Sum = $sum"
