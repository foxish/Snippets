#! perl
use strict;
use warnings;

my @people = qw{a b c d e f g h};
my %count;
$count{$_}++ foreach @people;
print $count{a}."\n";
print $count{b}."\n";
print $count{c};