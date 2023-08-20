clear
echo "Enter a number"
read n
c=0
a=$n
while [ $a -ne 0 ]
do
	c=$(( c+1 ))
	a=$(( a/10 ))
done
k=0
a=$n
while [ $a -ne 0 ]
do
	r=$(( a%10 ))
	k=$(( k+r**c ))
	a=$(( a/10 ))
done
if [ $k -eq $n ]
then
	echo "Armstrong number"
else
	echo "Not an armstrong number"
fi
