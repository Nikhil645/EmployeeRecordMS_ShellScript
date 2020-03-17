echo "Enter the source file: "
read src
echo "Enter the destination file: "
read dest
if [ ! -f "$src" ]
then
	echo "Source file $src does not exists!!"
	exit
elif [ -f "$dest" ]
then
	echo "Destination file $dest exists!!"
fi
cp $src $dest
status=$?
if [ $status -eq 0 ]
then
	echo "File Copied"
else
	echo "Error"
fi
