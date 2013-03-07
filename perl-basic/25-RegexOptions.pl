#! perl
use strict;
use warnings;

#my $yesPattern = "/yes[s]*/i";
#my $repeatPattern = "/y((.)(.)\g{-1}\g{-2}) d\g{-3}/";

$_ = <STDIN>;
chomp;

if(/y(?<wholeg>(?<fchar>.)(?<schar>.)\k<schar>\k<fchar>) d\k<wholeg>/){
	print "Matched string: $&\nBefore match: $`\nAfter match: $'";
	}
else{
	print $_. " doesn't match";
	}

<STDIN>;