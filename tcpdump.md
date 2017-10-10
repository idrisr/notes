# `tcpdump`

##  quick start
`-i any`: listen on all interfaces to see if you're seeing any traffic

`-D`: show list of the available interfaces

    % tcpdump -D
    1.en0 [Up, Running]
    2.p2p0 [Up, Running]
    3.awdl0 [Up, Running]
    4.utun0 [Up, Running]
    5.en1 [Up, Running]
    6.utun1 [Up, Running]
    7.utun2 [Up, Running]
    8.utun3 [Up, Running]
    9.lo0 [Up, Running, Loopback]
    10.gpd0 [Running]
    11.gif0

`-i eth0`: Listen on the eth0 interface

## `eth0`

the first ethernet interface, more a linux thing

![etho](https://i.imgur.com/raTUtKb.png)

## `en0`, `en1`

`en0` and `en1` are your physical wired/wireless cards. lo0 is the loopback device, which is used for entirely internal communication, ie. between two applications both running on your PC. fw0 is for networking over firewire I believe.

## `lo0` loopback device

basically to have a client-server running on the same device, but on the TCP level. I believe it's like localhost, but on the TCP level instead of the HTTP level.
