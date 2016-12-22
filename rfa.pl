sub get2file2data {
my($filename) = @_;
use strict;
use warnings;
my @filedata = ();
unless( open(Get2file2data, $filename) ) {
print STDERR "cannot open file \"$filename\"\n\n";
exit;
}
@filedata = <Get2file2data>;
close Get2file2data;
return @filedata;
}
sub extract2from2data {
my(@fasta2file2data = @_;
use strict;
use warnings;
my $seq = '';
foreach my $line (@fasta2file2data) {
if ($line =~ /^\s*$/) {
next;
} elsif($line =~ /^\s*#/) {
next;
}elsif($line =~ /^>/0 {
next;
} else {
$seq .= $line;
}
}
$seq =~ s/\s//g;
return $seq;
}
