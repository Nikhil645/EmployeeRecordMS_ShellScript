#!/usr/bin/perl
print "Enter the no : " ;
read n
$d = 0
$c = 0
for($c=2;$c<=$n-1;$c=(d$c+1))
{
	if($n%$c==0)
	{
		$d=1;
		break;
	}
}
if($d==0)
{
	print "$n is prime\n"
}
else
{
	print "$n is not prime\n"
}
