# `dns-sd`

[readme](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/dns-sd.1.html)

`dns-sd` -- Multicast DNS (`mDNS`) & DNS Service Discovery (`DNS-SD`) Test Tool

The `dns-sd` command is a network diagnostic tool, much like `ping(8)` or
`traceroute(8)`.  However, unlike those tools, most of its functionality is not
implemented in the `dns-sd` executable itself, but in library code that is
available to any application.  The library API that `dns-sd` uses is documented in
`/usr/include/dns_sd.h`.  The `dns-sd` command replaces the older `mDS` command.
