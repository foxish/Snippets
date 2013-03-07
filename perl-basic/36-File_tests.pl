#!perl
use strict;
use warnings;

my $filename = "26-MoreRegex.pl";
print "Already exists\n" if -e $filename;
warn "Kiss my ass\n" if -M $filename < 30;
warn "Can be read\n" if -r $filename;
warn "Creation date > 30\n" if -C $filename > 30;
print "This is bloody text\n" if -T $filename;
print "This is interactive\n" if -t STDIN;

print "Age = ". (-s _)."\n";

#my($dev, $ino, $mode, $nlink, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) =
print stat($filename);

print "TimeStamp = \n", localtime;


<STDIN>;