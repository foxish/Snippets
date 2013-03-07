#!/usr/bin/perl
use strict;
use 5.014;
use warnings;

sub by_number {
	#if($a > $b){1} elsif ($a < $b){-1} else {0}
	$a <=> $b;
}

sub by_ascii {
	$a cmp $b;
}
my %hash = ('w' => 100, 'y' => 100, 'x' => 200, 'z' => 300);

#sub by_hash_value {
#	$hash{$a} <=> $hash{$b};
#}

my @result;
my @numbers = (6,5,4,3,2,1);

print sort by_number @numbers;
print "\n";

print sort by_ascii @numbers;
print "\n";

print sort {$hash{$b} <=> $hash{$a};} keys %hash;
print "\n";

print sort { ($hash{$b} <=> $hash{$a}) or ($a cmp $b)} keys %hash;
print "\n";

#long
my $flag = 0;
foreach my $key(keys %hash){
	next unless $key =~ /[xw]/;
	$flag = $key;
	last;
}
print $flag;

#smart
print "\nFound Key\n" if(%hash ~~ /[xw]/);

#smart arrays
my @a = my @b = qw(a b);
my @c = qw(c d);

print "Ident" if(@a ~~ @b);
say "Ident2" if (@a ~~ @c);

given( $a[0] ) {
	when (/a/){say "yaay"}
	when (/b/){say "nooo"}
	default {}
}


foreach (@a){
	when (/a/){say "yaay"}
	when (/b/){say "nooo"}
}

say '';




