clear
echo "Enter your marks"
read m
if [ m -ge 90 -a m -le 100 ]
then
	echo "O"
elif [ m -ge 80 -a m -lt 90 ] 
then
	echo "E"
elif [ m -ge 70 -a m -lt 80 ] 
then
	echo "A"
elif [ m -ge 60 -a m -lt 70 ] 
then
	echo "B"
elif [ m -ge 50 -a m -lt 60 ] 
then
	echo "C"
elif [ m -ge 40 -a m -lt 50 ] 
then
	echo "D"
elif [ m -lt 40 -a m -ge 0 ] 
then
	echo "F"
else
	echo "Invalid"
fi
