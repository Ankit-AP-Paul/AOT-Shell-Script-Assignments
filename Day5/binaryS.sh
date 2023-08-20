clear
read -p "Enter the size..." n
for (( i=1;i<=n;i++ ))
do
	read a[i]
done
echo "Original Array = "
echo ${a[*]}
read -p "Enter the number to be searched..." key

low=1
high=$n

while [ $low -le $high ]
do
	mid=$(( (low+high)/2 ))
	if [ ${a[mid]} -eq $key ]
	then
		echo "Item found"
		exit
	fi
	if [ ${a[mid]} -gt $key ]
	then
		high=$(( mid-1 ))
	fi
	if [ ${a[mid]} -lt $key ]
	then
		low=$(( mid+1 ))
	fi
done

echo "Item not found"
	
