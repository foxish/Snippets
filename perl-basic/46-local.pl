#!/usr/bin/perl 
use strict; 
use warnings; 

$a = 5;
{ 
local $a=10; 
reassign(); 
reassign(); 
} 
reassign(); 

sub reassign{ 
	print $a; 
	$a=20; 
}