#! perl
use strict;
use warnings;
my $someline = <STDIN>;#.<STDIN>;
chomp $someline;
#/[\000-\177]/
#/fred.*john/s
#/-?    \d+    \.?    \d+/x

if($someline =~ /^\bmarde\b$/i){
	print "Match";
	}
else{
	print "No Match";
}

<STDIN>;
	