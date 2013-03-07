#! perl
use strict;
use warnings;
#use Data::Dump 'dump';


my @names = qw(anirudh a1 a2 a3 a4);
my @result = &getArrayIndex("a4", @names);
my $result = &getArrayIndex("a4", @names);

#dump @result."\n";
#dump $result."\n";


sub getArrayIndex{
	my($what, @array) = @_;
	
	if(!wantarray){
		foreach(0..$#array){
			if($what eq $array[$_]){
				return $_+1;
			}
		}
	}else{
		return (1,2,[@array]);
	
	}
-1;#returns value

}