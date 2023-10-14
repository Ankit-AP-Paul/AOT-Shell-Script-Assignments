clear
f1=$1
if [ -f $f1 ]; then
	echo "EmpId  BasicPay  DA     HRA    Gross">salary.txt
	exec<$f1
	while read line
	do
		set `echo $line`
		da=`expr 120 \* $2 / 100`
		hra=`expr 15 \* $2 / 100`
		gross=`expr $2 + $da + $hra`
		echo "$1   $2     $da  $hra   $gross">>salary.txt
	done
fi
cat salary.txt
	
