clear
if [ $# -eq 0 ]; then 
	echo "No arguments found"
 	exit
fi

file=$1
if [ -f $file ]; then
	wk=1
 	d=1
	s=0
	echo "Week   | Average Temp">weeklyTemp.txt
 	exec<$file
	while read temp; do
		s=$(( temp+s ))
		if [ $d -eq 7 ]; then 
			avg=$(( s/7 ))
			echo "Week $wk | $avg">>weeklyTemp.txt
	 		wk=$(( wk+1 ))
			d=1
	 		s=0
	 	else d=$(( d+1 ))
 		fi
	done
fi
cat weeklyTemp.txt