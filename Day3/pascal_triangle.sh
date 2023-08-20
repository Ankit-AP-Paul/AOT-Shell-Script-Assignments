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

combination()
{
	n=$1
	r=$2
	a=$(( `factorial $n`/(`factorial $(( n-r ))`*`factorial $r`) ))
	echo $a
}

printf "Enter the number of rows = "
read n
for (( i=0;i<n;i++ ))
do
	for(( k=n;k>i;k-- ))
	do	
		printf " "
	done
	for (( j=0;j<=i;j++ ))
	do
		term=`combination $i $j`
		printf "$term "
	done
	echo ""
done
