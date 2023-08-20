clear
read -p "Enter the size..." n
for (( i=1;i<=n;i++ ))
do
	read a[i]
done
echo "Original Array = "
echo ${a[*]}
read -p "Enter the number to be searched..." key
for (( i=1;i<=n;i++ ))
do
	if [ ${a[i]} -eq $key ]
	then
		echo "Item found at position $i"
		exit
	fi
done
echo "Item not found"
