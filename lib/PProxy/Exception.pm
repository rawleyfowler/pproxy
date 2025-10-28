package PProxy::Exception;

use Moo;
use Types::Standard qw(Str);

has message => (
  is => 'ro',
  isa => Str
 );

has type => (
  is => 'ro',
  isa => Str,
  default => 'error'
 );

sub throw {
  die shift;
}

1;
