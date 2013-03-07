#! perl
use strict;
use warnings;
use CGI qw(:all);
use DBI;

#print header("text/plain"), start_html("Hello There"), h1("Shut your face");
#print end_html();

my $dbconnector = DBI->connect('DBI:mysql:test;host=localhost',
'root', 'secretyeah') || die "Cannot connect to that weird DB!: $DBI::errstr";

my $query = qq(SELECT * FROM xpanni);
my $sth = $dbconnector->prepare($query)
                or die "Couldn't prepare statement: " . $dbconnector->errstr;
				
$sth->execute();
system('cls');
 while (my @data = $sth->fetchrow_array()) {
            print "$data[0] --> $data[1]\n";
          }  
		  
$dbconnector->disconnect();

