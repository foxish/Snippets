#! perl
use strict;
use warnings;

foreach (<*.filetype>){
		  local $^I = "";
		  local @ARGV = ($_);
		  while (my $line = <>) {
						 $line =~ s/text1/text2/g";
						 print $line;
		  }
   }
<STDIN>;