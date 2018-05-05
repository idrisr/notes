# `dns-sd`

DNS Service Discovery

[readme](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/dns-sd.1.html)

`dns-sd` -- Multicast DNS (`mDNS`) & DNS Service Discovery (`DNS-SD`) Test Tool

The `dns-sd` command is a network diagnostic tool, much like `ping(8)` or
`traceroute(8)`.  However, unlike those tools, most of its functionality is not
implemented in the `dns-sd` executable itself, but in library code that is
available to any application.  The library API that `dns-sd` uses is documented in
`/usr/include/dns_sd.h`.  The `dns-sd` command replaces the older `mDS` command.


```bash
dns-sd -E                              (Enumerate recommended registration domains)
dns-sd -F                                  (Enumerate recommended browsing domains)
dns-sd -R <Name> <Type> <Domain> <Port> [<TXT>...]             (Register a service)
dns-sd -B        <Type> <Domain>                     (Browse for service instances)
dns-sd -L <Name> <Type> <Domain>                       (Resolve a service instance)
dns-sd -Q <name> <rrtype> <rrclass>             (Generic query for any record type)
dns-sd -Z        <Type> <Domain>               (Output results in Zone File format)
dns-sd -G     v4/v6/v4v6 <name>              (Get address information for hostname)
dns-sd -H                                   (Print usage for complete command list)
dns-sd -V                (Get version of currently running daemon / system service)
```

```bash
# browse for reveal
dns-sd -B _reveal._tcp local
```

```bash
# resolve
# $REVEAL is from prior step
dns-sd -L ${REVEAL} _reveal._tcp.
```
