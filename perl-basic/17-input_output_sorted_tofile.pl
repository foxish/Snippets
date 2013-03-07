#! perl
use strict;
use 5.010;
use warnings;

#print @ARGV;
#print "\n------\n";
#print "@ARGV";
#print "\n------\n";
#print <>; #expected behaviour
open OUTPUT, ">$ARGV[0]";
shift @ARGV;
print OUTPUT sort <>; #sort <>; ###asciibetical, remember

<STDIN>;