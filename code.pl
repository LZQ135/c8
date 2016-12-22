sub co2aa {
 my($co) = @_;
 $co =uc $co;
 my(%genetic_code) = (
 'TCA' => 'S',
 TCC => 'S',
 TCG => 'S',
TCT => 'S',
TTC => 'F',
TTT => 'F',
TTA => 'L',
TTG => 'L',
TAC => 'Y',
TAT => 'Y',
TAA => '_',
TAG => '_',
TGC => 'C',
TGT => 'C',
TGA => '_',
TGG => 'W',
CTA => 'L',
CTC => 'L',
CTG => 'L',
CTT => 'L',
CCA => 'P',
CCC => 'P',
CCG => 'P',
CCT => 'P',
CAC => 'H',
CAT => 'H',
CAA => 'Q',
CAG => 'Q',
CGA => 'R',
CGC => 'R',
CGG => 'R',
CGT => 'R',
ATA => 'I',
ATC => 'I',
ATT => 'I',
ATG => 'M',
ACA => 'T',
ACC => 'T',
ACG => 'T',
ACT => 'T',
AAC => 'N',
AAT => 'N',
AAA => 'K',
AAG => 'K',
AGC => 'S',
AGT => 'S',
AGA => 'R',
AGG => 'R',
GTA => 'V',
GTC => 'V',
GTG => 'V',
GTT => 'V',
GCA => 'A',
GCC => 'A',
GCG => 'A',
GCT => 'A',
GAC => 'D',
GAT => 'D',
GAA => 'E',
GAG => 'E',
GGA => 'G',
GGC => 'G',
GGG => 'G',
GGT => 'G',
 );
if(exists $genetic_code{$co}) {
 return $genetic_code{$co};
}else{
print STDERR "bad co \"$co\"!!\n";
 exit;
 }
}

#!/usr/bin/perl -w
use strict;
use warnings;
my $dna = 'CGACGTCTTCGTACGGGAACGCAT';
my $protein = '';
my $co;
for ( my $i = 0 ; $i < ( length($dna) - 2 ) ; $i += 3 ) {
$co = substr( $dna, $i, 3 );
$protein .= co2aa($co);
}
print "i translated the DNA\n\n$dna\n\n into the protein\n\n$protein\n\n";
exit;

