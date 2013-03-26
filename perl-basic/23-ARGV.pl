#! perl
use strict;
use 5.010;
use warnings;

while(<>){	#while reads line by line, foreach waits for all input to come firs
	state $oldargv = "";
	if($ARGV ne $oldargv){
		print "\n\n############".$ARGV."##############\n\n";
		}
	print "Heyooo ".$_;
	$oldargv = $ARGV;
}

<STDIN>;