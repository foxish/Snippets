#!/usr/bin/perl
use strict;
use warnings;

my @mismatch;
my $prevval = 0;
foreach (<@ARGV>){
	while (my $line = <>) {
		chomp $line;
		$line=~s/[^0-9A-Fa-f].*$//g;
		#isolated number
		
		if(hex($prevval) != 0 && (hex($line) > (hex($prevval) + 4))){
			push(@mismatch, $prevval);
			push(@mismatch, $line);
			push(@mismatch, hex($line) - hex($prevval));
		}
		
		#take value for next iteration
		$prevval = $line;
	}
}
for(my $i = 0; $i < (@mismatch - 2); $i+=3) {
  print "\nRange: $mismatch[$i] - $mismatch[$i+1]: $mismatch[$i+2]\n";
  for(my $j= hex($mismatch[$i]) + 4; $j < hex($mismatch[$i+1]); $j+=4){
		my $hex = sprintf("%X",$j);
		print $hex."\n";
  }
  
}