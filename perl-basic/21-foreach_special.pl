#! perl
use strict;
use 5.010;
use warnings;

while(<STDIN>){	#while reads line by line, foreach waits for all input to come first
	print "Heyooo ".$_;
}

<STDIN>;