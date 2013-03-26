#! perl
use strict;
use 5.010;
use warnings;

print "Enter Numbers \n";
my $user_total = &total(<STDIN>);
print $user_total;

sub total{
	state $sum = 0;
	foreach(@_)
	{
		$sum+=$_;
	}
	$sum;
	
}