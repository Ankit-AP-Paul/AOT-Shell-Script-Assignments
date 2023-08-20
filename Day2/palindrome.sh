clear
echo "Enter a number"
read n
k=0
a=$n
while [ $a -ne 0 ]
do
	r=$(( a%10 ))
	k=$(( k*10+r ))
	a=$(( a/10 ))
done
if [ $k -eq $n ]
then 
	echo "Palindrome number"
else
	echo "Not a palindrome number"
fi
