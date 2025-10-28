package PProxy::Config;

use Moo;
use Types::Standard qw(Str);
use YAML::Tiny;
use File::Slurper;
use PProxy::Exception;

has location => (
  is => 'ro',
  isa => Str,
  default => '/etc/pproxy/config.yaml'
 );

has yaml => (
  is => 'ro',
  default => sub { 'YAML::Tiny' }
 );

sub get_config {
  my ($self) = @_;
  my $documents = $self->yaml->read($self->location);
  PProxy::Exception->new(
    message => 'Multiple documents inside of config, bailing.'
   )->throw() unless scalar(@$documents) == 1;
  return $documents->[0];
}

1;
