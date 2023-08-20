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

clear
printf "Enter a number = "
read num
f=`factorial $num`
echo "Facorial = $f"
