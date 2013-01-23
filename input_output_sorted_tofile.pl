#! perl
use strict;
use warnings;

open OUTPUT, ">$ARGV[0]";
shift @ARGV;
print OUTPUT sort <>;

<STDIN>;