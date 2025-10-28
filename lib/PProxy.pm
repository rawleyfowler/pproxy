package PProxy;

use Moo;
use Types::Standard qw(HashRef);

has config => (
  is => 'ro',
  isa => HashRef,
  default => sub {
    return PProxy::Config->new()->get_config;
  }
);

1;
