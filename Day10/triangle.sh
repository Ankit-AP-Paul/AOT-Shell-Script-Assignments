clear
read -p "Enter the side..." s
x=30
y=5
for (( i=1;i<=s;i++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x+2))
	y=$((y+1))
done
x=30
y=5
for (( i=1;i<=s;i++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x-2))
	y=$((y+1))
done
for (( i=1;i<4*s+1;i++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x+1))
done

