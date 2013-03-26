#! perl
use strict;
use 5.010;
use warnings;

print @ARGV;
print "\n------\n";
print "@ARGV";
print "\n------\n";
#print <>; #expected behaviour
#print sort <>; #RESOLVED! ##super-weird. It takes one line from each file at a time

my @argstore = @ARGV;
my (@arrayStrings, @array1, @array2);
@arrayStrings = (\@array1, \@array2);
foreach(@argstore){
	@ARGV = ($_);
	&populateArrays(@arrayStrings);
	print @ARGV;
}

sub populateArrays{
	
	@array = @_;

}



<STDIN>;