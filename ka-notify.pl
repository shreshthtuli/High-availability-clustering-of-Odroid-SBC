#!/usr/bin/perl
 
# INSTANCE|VI_FREESW|BACKUP|50
my ($what,$id,$state,$prio) = @ARGV;
open(STDOUT, "|/usr/bin/logger -t ka-notify");
 
print "what($what) id($id) state($state) prio($prio)\n";
 
if ( $state eq "MASTER" )
{
    print "Instance went to master, issuing sofia recover.\n";
    system("/usr/local/freeswitch/bin/fs_cli", "-x", "sofia recover");
 
    # Not ideal, but it seems to fail over too quickly for skinny devices
    # and since they don't actually handle the failover, need to poke them
    # Comment this out if you're not using mod_skinny/SCCP
    system("/usr/local/freeswitch/bin/fs_cli", "-x", "reload mod_skinny");
}