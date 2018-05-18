# `Reachability`

* [readme](https://blog.obdev.at/representing-socket-addresses-in-swift-using-enums/)

## `SystemConfiguration`

Allow applications to access a device’s network configuration settings.
Determine the reachability of the device, such as whether Wi-Fi or cell
connectivity are active.

This collection of documents describes the programming interfaces of the System
Configuration framework. The System Configuration framework provides functions
that determine the reachability of target hosts in both a synchronous and an
asynchronous manner. It also provides error detection facilities.


### `SCNetworkReachability`
The `SCNetworkReachability` programming interface allows an application to
determine the status of a system's current network configuration and the
reachability of a target host. A remote host is considered reachable when a data
packet, sent by an application into the network stack, can leave the local
device. Reachability does not guarantee that the data packet will actually be
received by the host.

## some relevant calls / types involved

### `sockaddr_in`
```swift
/*
 * Socket address, internet style.
 */
public struct sockaddr_in {
    public var sin_len: __uint8_t
    public var sin_family: sa_family_t
    public var sin_port: in_port_t
    public var sin_addr: in_addr
    public var sin_zero: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8)
    public init()
    public init(sin_len: __uint8_t, sin_family: sa_family_t, sin_port: in_port_t, sin_addr: in_addr, sin_zero: (Int8, Int8, Int8, Int8, Int8, Int8, Int8, Int8))
}
```

### `AF_INET`
```swift
public var AF_INET: Int32 { get } /* internetwork: UDP, TCP, etc. */
```

### `SCNetworkReachabilityCreateWithAddress`
* Creates a reachability reference to the specified network address.
* You can use the reachability reference returned by this function to monitor
the reachability of the target host.

### `SCNetworkReachabilityFlags`
Flags that indicate the reachability of a network node name or address,
including whether a connection is required, and whether some user intervention
might be required when establishing a connection.


```swift
public struct SCNetworkReachabilityFlags : OptionSet {
    public init(rawValue: UInt32)
    public static var transientConnection: SCNetworkReachabilityFlags { get }
    public static var reachable: SCNetworkReachabilityFlags { get }
    public static var connectionRequired: SCNetworkReachabilityFlags { get }
    public static var connectionOnTraffic: SCNetworkReachabilityFlags { get }
    public static var interventionRequired: SCNetworkReachabilityFlags { get }
    public static var isLocalAddress: SCNetworkReachabilityFlags { get }
    public static var isDirect: SCNetworkReachabilityFlags { get }
    public static var isWWAN: SCNetworkReachabilityFlags { get }
    public static var connectionAutomatic: SCNetworkReachabilityFlags { get }
}
```

### `SCNetworkReachabilityGetFlags`
Determines if the specified network target is reachable using the current
network configuration.

### `kSCNetworkFlagsReachable`
The specified node name or address can be reached using the current network configuration.


### `kSCNetworkFlagsConnectionRequired`
The specified node name or address can be reached using the current network
configuration, but a connection must first be established.

### `kSCNetworkFlagsTransientConnection`
### `kSCNetworkFlagsConnectionAutomatic`
### `kSCNetworkFlagsInterventionRequired`
### `kSCNetworkFlagsIsLocalAddress`
### `kSCNetworkFlagsIsDirect`
