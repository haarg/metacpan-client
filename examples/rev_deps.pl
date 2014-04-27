use strict;
use warnings;
use DDP;

use MetaCPAN::Client;

my $deps =
    MetaCPAN::Client->new->rev_deps('Hijk');

my @output = (
    map +{
        name   => $_->name,
        author => $_->author
    },
    @{$deps}
);

p @output;
