words=("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine" )
read -p "Enter a number = " num
res=""
while [ $num -gt 0 ]
do
    digit=$(( num%10 ))
    res="${words[digit]} $res"
    num=$(( num/10 ))
done
echo $res