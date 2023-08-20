clear
read -p "Enter the size..." n
for (( i=1;i<=n;i++ ))
do
	read a[i]
done
echo "Original Array = "
echo ${a[*]}
for (( i=1;i<=n;i++ ))
do
	for (( j=1;j<=n-i;j++ )) 
	do
		if [ ${a[j]} -gt ${a[j+1]} ]
		then
			temp=${a[j]}
			a[j]=${a[j+1]}
			a[j+1]=$temp
		fi
	done
done
echo "Sorted Array = "
echo ${a[*]}
