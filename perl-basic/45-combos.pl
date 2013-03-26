#! perl
use warnings;
use strict;
my $str = 'text';
my @ra = split / /, $str;
for(my $i=0; $i < scalar @ra; $i++)
{
    my $word = $ra[$i];
    my $num = length($word);
    my @chars = split("", $word);
	my $ctr = 1;
	while($ctr != $num){
		for(my $k = 0; $k < $num; $k++)
		{
			if($ctr == $k){
				print '/';
			}
			print $chars[$k];    
		}
		$ctr++;
	}
	print "\n";
}