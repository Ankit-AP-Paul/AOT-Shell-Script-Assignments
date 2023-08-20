clear
echo "Enter 2 numbers = "
read a b
s=`expr $a + $b`
diff=`expr $a - $b`
mul=`expr $a \* $b`
q=`expr $a / $b`
r=`expr $a % $b`
echo "Sum = $s"
echo "difference = $diff"
echo "product = $mul"
echo "quotient = $q"
echo "remainder = $r"
