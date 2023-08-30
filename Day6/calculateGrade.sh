if [ $# -eq 0 ]; then
    echo "No arguments found"
    exit
fi

f1=$1
if [ -f $f1 ]
then
    echo "Roll Name Marks Grade">grade.txt
    exec<$f1
    while read line
    do
        set `echo $line`
        if [ $3 -ge 90 -a $3 -le 100 ]; then
            grade="O"
        elif [ $3 -ge 80 -a $3 -lt 90 ]; then
            grade="E"
        elif [ $3 -ge 70 -a $3 -lt 80 ]; then
            grade="A"
        elif [ $3 -ge 60 -a $3 -lt 70 ]; then
            grade="B"
        elif [ $3 -ge 50 -a $3 -lt 60 ]; then
            grade="C"
        elif [ $3 -ge 40 -a $3 -lt 50 ]; then
            grade="D"
        elif [ $3 -lt 40 -a $3 -ge 0 ]; then
            grade="F"
        else
            grade="Invalid"
        fi
        echo "$1    $2   $3     $grade">>grade.txt
    done
    cat grade.txt
fi