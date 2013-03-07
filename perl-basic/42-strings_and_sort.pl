#!perl
use strict;
use warnings;

#index
my $bigDaddy = "Die, Die, Die My Darling!";
my $toFind = "Die";
print index($bigDaddy, $toFind, 6);
print "\n";
print rindex($bigDaddy, $toFind);

print "\n";
#substr
print my $sub = substr "yanni", 3,2;
print $sub = substr "yanni", -3,2;

print "\n";
my $modify = "yanni";
substr($modify, 0, 3) = "Ass";
substr($modify, 0, 3) =~ s/Ass/Bit/;
print substr($modify, 0, 3, "Generics & Reflection");
print $modify;
print "\n";

#sprintf
my($sec,$min,$hour,$mday,$mon,$year) = localtime(time);
my $date_tag = sprintf "%4d/%02d/%02d %2d:%02d:%02d", $year+=1900, ++$mon, $mday, $hour, $min, $sec;
print $date_tag;

print "\n";
my $number = sprintf "%.2f", 4.5773;
print $number;

print "\n";
my $number = 291239123123.2323232545;
1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
print $number;

print "\n";



