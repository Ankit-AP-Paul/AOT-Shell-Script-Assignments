clear
printf "Enter 3 sides of a triangle = "
read a b c
if [ $(( a+b )) -gt $c -a $(( b+c )) -gt $a -a $((  a+c )) -gt $b ]
then
	echo "Triangle can be formed"
	s=`echo "scale=3; ($a+$b+$c)/2"|bc`
	temp=`echo "scale=3; $s*($s-$a)*($s-$b)*($s-$c)"|bc`
	ar=`echo "scale=3; sqrt($temp) "|bc`
	echo "$ar"
else
	echo "Triangle can not be formed"
fi
