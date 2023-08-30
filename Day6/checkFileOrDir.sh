if [ $# -eq 0 ]; then
    echo "No arguments found"
    exit
fi

for i in $*
do
    if [ -f $i ]; then
        echo "$i is a file"
        echo "No. of lines = $(cat $i|wc -l)"
        echo "No. of words = $(cat $i|wc -w)"
        echo "No. of characters = $(cat $i|wc -c)"
    else
        echo "$i is a directory"
    fi
    echo ""
done