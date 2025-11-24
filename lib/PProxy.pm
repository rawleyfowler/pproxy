package PProxy;

use Moo;
use Types::Standard qw(HashRef);

use PProxy::Config;
use PProxy::Commands;

has commands => (
  is => 'ro',
  default => sub {
    return PProxy::Commands->new()->commands;
  }
);

has config => (
  is => 'ro',
  isa => HashRef,
  default => sub {
    return PProxy::Config->new()->get_config;
  }
);

1;
