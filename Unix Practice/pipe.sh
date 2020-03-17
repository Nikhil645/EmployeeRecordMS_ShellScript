echo "Enter file name"
read fname
echo "Enter no of characters to be displayed in a line : "
read no
fold -$no $fname | cat >>text1

