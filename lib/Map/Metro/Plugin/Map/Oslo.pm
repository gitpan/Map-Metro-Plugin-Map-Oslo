use 5.14.0;

package Map::Metro::Plugin::Map::Oslo;

our $VERSION = '0.1100'; # VERSION

use Moose;

with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-oslo.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=encoding utf-8

=head1 NAME

Map::Metro::Plugin::Map::Oslo - Map::Metro map for Oslo

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Oslo')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

This map is currently (2014-12-19) believed to be correct (L<wikipedia|https://en.wikipedia.org/wiki/Oslo_metro>).

Note:

* Line 1 stops at Helsfyr.

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2014 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
