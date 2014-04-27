use strict;
use warnings;
use DDP;

use MetaCPAN::Client;

my $authors =
    MetaCPAN::Client->new->author({
        either => [
            { name => 'Dave *'  },
            { name => 'David *' },
        ],
        not => [
            { name => 'Dave C*' },
            { name => 'David M*' },
        ]
    });

print "\n";
p ( $authors->total );
