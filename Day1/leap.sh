clear
echo "Enter the year"
read yr
if [ \( `expr $yr % 100` -ne 0 -o `expr $yr % 400` -eq 0 \) -a `expr $yr % 4` -eq 0 ] 
then
	echo "Leap Year"
else
	echo "Not a leap year"
fi
