use base "basetest";
use bmwqemu;

sub is_applicable()
{
	return 0; # breaks 12.3 as there is no more sysvinit bnc#802467
	return $ENV{SYSVINIT};
}

sub run()
{
	my $self=shift;
	script_sudo("zypper -n rm systemd-sysvinit");
	sendkey "ret";
}

sub checklist()
{
	# return hashref:
	return {qw(
	)}
}

1;
