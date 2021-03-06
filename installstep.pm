package installstep;
use base "basetest";

# using this as base class means only run when an install is needed
sub is_applicable()
{
	my $self=shift;
	return $self->SUPER::is_applicable && !$ENV{NOINSTALL} && !$ENV{LIVETEST};
}

1;
