#! perl
use strict;
use warnings;

my %count;
my $total;
my $valid;
while(<>){
	foreach(split){
		$total++;
		next if /\W/;
		$valid++;
		$count{$_}++;
	}
}
print "Total words: $total\n";
print "Valid words: $valid\n";

foreach my $word(sort keys %count){
	print "$word occurred $count{$word} times\n";

}


<STDIN>;