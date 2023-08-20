clear

#user input
read -p "Enter your dob in dd/mm/yyyy format..." dob
IFS="/"
set $dob
d=$1
m=$2
y=$3

#system date
dd=`date +%d`
mm=`date +%m`
yy=`date +%Y`

d=`expr $dd - $d`
if [ $d -le 0 ]
then
	d=$(( d+30 ))
	mm=$(( mm-1 ))
fi

m=`expr $mm - $m`
if [ $m -le 0 ]
then
	m=$(( m+12 ))
	yy=$(( yy-1 ))
fi

y=$(( yy-y ))

echo "Age is $y years $m months $d days"
