#!perl
use strict;
use warnings;

my $what = shift @ARGV;
my $ctr = 0;
foreach (<>){
	$ctr++;
	if(/$what(?<fwdmatch>.*)/i){
		print "Matched $what in line no. $ctr: ". &trim($+{fwdmatch}) ."\n";
	}
}

sub trim{
   my $string = shift;
   $string =~ s/^\s+|\s+$//g;
   return $string;
}