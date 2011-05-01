#!perl -T
#
# This file is part of PerlIO-Layers
#
# This software is copyright (c) 2010 by Leon Timmermans.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#

use Test::More tests => 1;

BEGIN {
    use_ok( 'PerlIO::Layers' ) || print "Bail out!
";
}

diag( "Testing PerlIO::Layers $PerlIO::Layers::VERSION, Perl $], $^X" );
