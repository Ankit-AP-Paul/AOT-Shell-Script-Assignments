clear

if [ $# -eq 0 ]
then
	echo "No arguments found"
	exit
fi

for i in $*
do
    ls -l $i
    chmod 000 $i
    ls -l $i
    if [ ! -x $i ]; then
        chmod u+x, u+r, u+w $i
    fi
    ls -l $i
    echo
done