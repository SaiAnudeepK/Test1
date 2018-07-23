#use strict;
#use warnings;
use Scalar::Util qw(looks_like_number);
$number_args=$#ARGV+1;
$fact = 1;
if($number_args!=2)
{
	print "Enter the correct syntax\n";
	exit;
}
if($ARGV[0] eq '-num')
{
	$number=$ARGV[1];
	if(looks_like_number($ARGV[1]))
	{
		if($ARGV[1] lt 0)
		{
			print "Please enter a number greater than or equals to zero\n";
			exit;
		}
		elsif($ARGV[1] eq 0)
		{
			print "Factorial of 0 is: 1\n";
			exit;
		}
		for($i = 1; $i <= $number ; $i=$i+1)
		{
			$fact = $fact*$i;
		}
		print "Factorial of $number is: $fact\n";
	}
	else
	{
		print "Input a number\n";
	}
}
else
{
	print "The first argument should be of the synatx -num\n";
	exit;
}
