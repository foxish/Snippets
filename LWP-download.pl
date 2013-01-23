#!/usr/bin/perl
use LWP::Simple;
use File::Basename;
use URI::Escape;

@ARGV = ("filename.txt");
open ($file, ">>", "dl.log"); 
while(my $line = <>) {
	 chomp($line);
	 my $filename = uri_unescape(basename($line));
	 my $status = getstore($line, $filename);
     if (is_success($status)){
		s/$line//;
		print "$filename downloaded!\n";
		print $file "$filename downloaded!\n";
	}
	else{
		print "Error downloading $filename\n";
		print $file "$filename downloaded!\n";
	}	
}
close($file);