#! perl
use strict;
use warnings;
$| = 1;
my $i = 1, my $j = 10;
foreach($i..$j){
	print $_;
	sleep(1);
}

<STDIN>;