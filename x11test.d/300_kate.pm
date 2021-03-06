use base "basetest";
use strict;
use bmwqemu;

# test kde text editor

# this function decides if the test shall run
sub is_applicable
{
    return($ENV{DESKTOP} eq "kde");
}

# this part contains the steps to run this test
sub run()
{
    my $self=shift;
    ensure_installed("kate");
    x11_start_program("kate");
    sendautotype("If you can see this text kate is working.\n");
    sleep 2;
    $self->take_screenshot; sleep 2;
    sendkey "ctrl-q"; sleep 2;
    sendkey "alt-d"; sleep 2; # discard
}

1;
