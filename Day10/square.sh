clear
read -p "Enter the side..." r
x=5
y=5
for(( j=1;j<r;j++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x+2))
done
for(( j=1;j<r;j++ ))
do
	tput cup $y $x
	echo "*"
	y=$((y+1))
done
for(( j=1;j<r;j++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x-2))
done
for(( j=1;j<r;j++ ))
do
	tput cup $y $x
	echo "*"
	y=$((y-1))
done
tput cup 20 0
