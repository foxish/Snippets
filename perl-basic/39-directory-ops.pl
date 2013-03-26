#!perl
use strict;
use warnings;

chdir("../");
my $dir_to_process = "gen-perl";
opendir DH, $dir_to_process or die "cannot open $dir_to_process: $!";
foreach my $file(readdir DH){
	print $file."\n";
}
