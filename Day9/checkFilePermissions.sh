clear

if [ $# -eq 0 ]
then
	echo "No arguments found"
	exit
fi
rm permissions.txt
for i in $*
do
	ls -l $i>>permissions.txt	
done
cat permissions.txt
