clear
echo "Enter the number of rows"
read n 
for (( i=1;i<=n;i++ ))
do
	for (( j=n;j>i;j-- ))
	do
		printf " "
	done
	for (( k=1;k<=2*i-1;k++ ))
	do
		printf "*"
	done
	echo ""
done
