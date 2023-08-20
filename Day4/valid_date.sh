clear

day=$1
month=$2
yr=$3

if [ \( `expr $yr % 100` -ne 0 -o `expr $yr % 400` -eq 0 \) -a `expr $yr % 4` -eq 0 ] 
then
	feb=29
else
	feb=28
fi


case $month in
	1|3|5|7|8|10|12)	if [ $day -gt 31 ]
						then
							echo "Not valid"
							exit
						fi
						;;
		
	2) if [ $day -gt $feb ]
		then
			echo "Not valid"
			exit
		fi
		;;
		
	4|6|9|11)	if [ $day -gt 30 ]
				then
					echo "Not valid"
					exit
				fi
				;;
	
	*)	echo "Not valid"
		exit
		;;
esac

echo "Valid date"	
