#!perl
use strict;
use warnings;

my $user = 1004;
my $group = 100;
#print getpwnam "Anirudh R";
#print getgrnam "Anirudh R";

my $now = time;
my $ago = $now - 3600;
utime $now, $ago, glob "*";


chown $user, $group, glob "*.txt";