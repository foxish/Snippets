#! perl
use strict;
use warnings;
use File::Basename();
use File::Spec();

my $name = 'C:\Windows\System32\cmd.exe';
print 'Directory: '. File::Basename::dirname($name)."\n";
print 'File: '. File::Basename::basename($name);

<STDIN>;