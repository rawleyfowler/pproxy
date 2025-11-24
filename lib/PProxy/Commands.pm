package PProxy::Commands;

use Moo;

has commands => (
  is => 'ro',
  default => sub {
    return {
      start => 'PProxy::Command::Start',
    };
  }
);



1;