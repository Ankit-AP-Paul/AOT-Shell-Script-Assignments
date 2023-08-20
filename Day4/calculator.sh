clear

while [ 1 ]
do
	echo "Enter + for addition"
	echo "Enter - for subtraction"
	echo "Enter * for multiplication"
	echo "Enter / for quotient"
	echo "Enter % for remainder"
	echo "Enter ^ for exponentiation"
	echo "Any other key to exit"
	read -p "Enter your choice..." op
	
	case $op in
	'+') 	read -p "Enter 2 numbers = " x y
			res=$(( x+y ))
			echo "Sum = $res"
			;;
	'-')	read -p "Enter 2 numbers = " x y
			res=$(( x-y ))
			echo "Difference = $res"
			;;
	'*') 	read -p "Enter 2 numbers = " x y
			res=$(( x*y ))
			echo "Product = $res"
			;;
	'/')	read -p "Enter 2 numbers = " x y
			res=$(( x/y ))
			echo "Quotient = $res"
			;;
	'%') 	read -p "Enter 2 numbers = " x y
			res=$(( x%y ))
			echo "Remainder = $res"
			;;
	'^')	read -p "Enter 2 numbers = " x y
			res=$(( x**y ))
			echo "Result = $res"
			;;
	*)		exit
	esac
	echo ""
done
			
