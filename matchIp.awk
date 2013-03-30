#!/usr/bin/awk -f

# usage:  ifconfig | ./matchIp.awk
{if (match($0, /9(\.[0-9]+)+/)) print substr($0, RSTART, RLENGTH)}
