#! perl
use strict;
use warnings;
my @names = qw(anirudh a1 a2 a3 a4);
my $result = &chomp("a4", @names);

print $result;

=for comment

Bleah..
multline comment using pod.. :D

=cut

sub chomp{
	my($what, @array) = @_;
	foreach(0..$#array){
		if($what eq $array[$_]){
			return $_+1;
		}
	}
-1;#returns value

}