read -p "Enter the radius..." r
for (( i=0;i<=360;i+=5 ))
do
    l=`echo "scale=4; 3.14 / 180 * $i"|bc|awk '{print cos($1)}'`
    m=`echo "scale=4; 3.14 / 180 * $i"|bc|awk '{print sin($1)}'`
    x=`echo "scale=4; $l * $r"|bc|awk '{print int($1)}'`
    y=`echo "scale=4; $m * $r"|bc|awk '{print int($1)}'`
    x=`expr $x + 20`
    y=`expr $y + 20`
    tput cup $y $x
    echo "*"
done