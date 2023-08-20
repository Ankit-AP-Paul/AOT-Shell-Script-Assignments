clear
while [ 1 ]
do
	echo ""
	echo "1. show all dir and files" 
	echo "2. show current working dir"
	echo "3. show list of users"
	echo "4. show all processes"
	echo "any other key to exit"
	printf "Enter your choice..."
	read x
	case $x in
		1) ls -l ;;
		2) pwd ;;
		3) who ;;
		4) ps ;;
		*) exit
	esac
done
