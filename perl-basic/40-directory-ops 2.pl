#!perl
use strict;
use warnings;

my $dir_to_process = "./";
opendir DH, $dir_to_process or die "Dang! $!";
while(my $name = readdir DH){
	print $name."\n" unless $name =~ /Pattern/;
}

print "\n";

my $file_to_delete = "rmfile.txt";
my $deleted = unlink $file_to_delete;
print "$deleted files were deleted! $!";

print "\n";
if (-e "name1.txt") {
rename "name1.txt", "name2.txt";
}else{
rename "name2.txt", "name1.txt" if -e "name2.txt";
}

link "name1.txt", "abcd";

print "\n";

mkdir "created_dir", oct("0755") or warn "Nope, can't!  $!";
rmdir "created_dir";

print "\n";

print $$;
