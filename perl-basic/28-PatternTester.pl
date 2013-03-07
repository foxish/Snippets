#! perl
use strict;
use warnings;

&clearScreen();
&checkArgs();

my $regex = shift @ARGV;
chomp $regex;

my $flag = shift @ARGV;
chomp $flag;

if ($flag eq "-s")
{
my $str = shift @ARGV;
	if($str =~ qr/$regex/){
		my $endLine = $';
		chomp $endLine;
		print "Input : $str\n";
		print "Regex : /$regex/\n";
		print "Matched ($` |<$&>| $endLine)";
	}
}elsif($flag eq "-f"){
	my $ctr;
	my $argchange = "";
	
	print "Input : @ARGV\n";
	print "Regex : /$regex/\n";
	
	while(<>)
	{
		$ctr++;
		if ($argchange ne $ARGV){
			$ctr = 0;
			print "\n";
		}
		if ($_ =~ qr/$regex/)
		{
			my $endLine = $';
			chomp $endLine;
			print "Matched ($` | <$&> | $endLine) on line $ctr of file $ARGV\n";
		}
		$argchange = $ARGV;
	}

}
else{
print "What is $flag supposed to mean huh?!\n";
	&printUsage();


}

sub printUsage(){
	my $usage = <<EOF;
	
	Usage: 
	1. 
	28-PatternTester.pl "<regex>" -f file1 file2 file3 ...
	e.g. 28-PatternTester.pl ".{3}" -f filename
	
	2.
	28-PatternTester.pl "<regex>" -s string
	e.g. 28-PatternTester.pl ".{3}" -s "what is up!"
	
	<regex> does NOT include the opening and trailing slashes. /.../
EOF
	print $usage;

}


sub clearScreen(){
	if($^O =~ /mswin/i){
		system('cls');
	}
	elsif($^O =~ /linux/i){
		system('clear');
	}	
}
sub checkArgs(){
	if($#ARGV < 2){
	print "Incorrect Usage";
	&printUsage();
	exit;
	}
}