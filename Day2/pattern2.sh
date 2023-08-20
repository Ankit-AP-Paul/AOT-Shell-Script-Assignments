clear
echo "Enter the number of rows"
read n
for (( i=n;i>=1;i-- ))
do
	for (( j=n;j>i;j-- ))
	do
		printf " "
	done
	for (( k=1;k<=i;k++ ))
	do
		printf "* "
	done
	echo ""
done
