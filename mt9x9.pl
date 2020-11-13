#!/usr/bin/perl
=pod
9x9 multiplication table in Perl
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018.
=cut
# perl mt9x9.pl || ( chmod +x mt9x9.pl ; ./mt9x9.pl )

for (my $i = 1; $i <= 9; $i += 3) {
    for (my $j = 1; $j <= 9; $j++) {
        foreach my $k ($i..$i+2) {
            printf("%dx%d=%2d\t", $k, $j, $k*$j);
        }
        printf("\n");
    }
    print "\n";
}
