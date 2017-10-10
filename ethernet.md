# Ethernet

# MAC Addresses

from [here](https://www.grc.com/sn/sn-029.pdf)

MAC address is a 48-bit number which is 24 bits that is assigned uniquely to a
manufacturer; and the other 24 bits is, like, the manufacturer's serial number,
so that none of its adapters ever have the same MAC address. And because the
manufacturer has 24 bits of the total, and then they have their own serial
number within those 24 bits, the concatenation, which is a 48-bit binary
number, is guaranteed to be unique in the world. And so he was thinking, hey,
why not just use that?  Well, the problem is, we absolutely depend upon IP
addressing being hierarchical, that is, when an IP address, for example, has
68.something.something.something, all the routers in the world know that
anything beginning with a 68 needs to kind of go in that direction, to go aim
those packets toward that network. So it's just like the way our U.S. postal
system works, where you have, like, a state and then a town and a street and a
number, where the first thing that happens is the mail gets sent to the right
state.  Then it gets sent to the right town. Then it gets sent to the right
street. Well, that's a hierarchical system.  MAC addresses are just, you know,
a NIC will have any random 48-bit number. So if you had that on a WAN, that is,
on a global network, you'd have no way of knowing from the address any idea of
where that particular network interface card was located. So specifically it's
the hierarchical nature of IP that makes the WAN work. Whereas, you know,
Ethernet LAN, because it has what's called a "flat addressing space," that is,
just a single 48-bit, you know, it's on your LAN, and you don't need to know
where because the whole LAN is one big network, one big sort of solid chunk of
wire. And you just address a packet to this 48-bit address on the LAN, and all
of the network cards hear it, and then only the one that has the matching
address responds to it.

## Hub

So when we are using a hub, everything that everyone sends into the hub over their transmission wires, the
hub simply rebroadcasts brainlessly. It doesn't do any thinking about it at all. It just basically, all of the
incoming wires are received, and everything is oared together and then sent back out. Well, naturally you
can still have collisions because, again, two cards could be transmitting at the same time. They would collide
in the hub. The hub would send out this garbled nothing message, and they would both go, oops. Because
they're listening to everything that the hub is sending, they would realize their message had not gotten
through, and they do the same back-off and resend. So switching to the original 10BaseT technology did not
help with this Ethernet saturation and collision problem.

## Switch

However, what then happened was we changed to switches instead of hubs. A switch is actually an intelligent
device, which is the reason they're more expensive than hubs, traditionally, and we're beginning to see hubs
going away as the price of switches are coming down just because of manufacturing efficiencies. A switch
actually learned the MAC addresses that are on each one of its segments. So whereas the original older coax
and a hub had, like, a single segment, that is, every NIC in the LAN could directly hear every other one, in a
switch it actually segments the LAN into individual pieces represented by its ports. And so you could have
multiple computers on a switch's port because the switch actually has a table of RAM. And if you look at the
specifications for a switch, it'll say something like up to 4,096 MAC addresses it's able to memorize, meaning
that in there is a 4K table of MAC addresses. And it learns which adapter is on which one of its ports.

## Broadcast address

So an Ethernet NIC will respond to its own address or to the broadcast address, which by universal
agreement is all ones, or in that MAC address addressing it's FF:FF:FF and so on, six sets of FFs. The idea is
that that's the way systems are able to find each other on the Ethernet. If through some technology or by
reason of some technology it's necessary for one computer to locate another, it's able to do a broadcast on
the Ethernet. And all the machines that receive that will take a look at the data. That also means that a
switch, which is normally providing some isolation, must rebroadcast out every one of its ports anything that
it receives that is addressed to that broadcast address. So one time that the switch looks like a hub is, if it
receives something, a packet, an Ethernet packet, addressed to the broadcast address, it just sends it
everywhere.

## Authentication and lack thereof

Now, what I mean is that there is no authentication, meaning that the adapters
are addressed just based on this 48-bit MAC address. Okay, well, we know that
everyone today is using IP addressing. On our own local networks we might have,
you know, 192.168.something.something, or 10. or whatever. Even out on the
Internet itself, routers are interconnected very often using Ethernet links
from one router to the next. That's just the way, you know, Ethernet has turned
out to work so well and be so inexpensive when you integrate the circuits and
all the technology, that it's just sort of the universal glue for all of our
computers.

Well, okay. The way Ethernet works is that packets have to be Ethernet packets
in order to travel across the Ethernet. Which means that the IP data, the IP
packets that are coming into the LAN, have to be encapsulated. They're
basically wrapped in an Ethernet packet that contains the MAC address of the
originating adapter and the destination adapter. Inside that is the IP data
that shows the source IP and the destination IP. But the Ethernet LAN doesn't
use that at all. It is all based on MAC addresses. So what has to happen is
that there's this relationship, an association between MAC addresses and IP
addresses. So that, for example, any computer on a LAN, a contemporary Ethernet
LAN, will have its IP address that it's been assigned by a DHCP server or
manually configured. And inherently it'll have a MAC address.G

## `ARP`

So there's basically two addresses. There's sort of the more global
hierarchical Internet IP, and also this, what we talked about, this
non-hierarchical, just sort of 48-bit fixed MAC address that is how data gets
to it on LAN. What this means is that the computers on the LAN, in order to
send IP data to each other, which is really what they want to do, they need to
have a table that says this IP is assigned to the computer with this MAC
address, and this IP, another IP, is assigned to such-and-such a computer. So
there's basically an association table that maps the IPs to the MAC addresses.
What happens when a packet comes in from the gateway, say that it's coming in
off the Internet, and it's addressed to a certain IP. The gateway, the router
or whatever it is that is the way the LAN connects to any other networks, it'll
look at this destination IP and look to see if it knows which MAC address is
associated with that IP. If it does already know because it's sent some data to
it in the past, it simply wraps that IP packet in an Ethernet packet and sticks
it on the LAN, addressed to its destination. That machine will hear it and
accept the packet, take the Ethernet wrapping off, and there's the IP packet
that it has been sent.

If, however, the gateway doesn't know the address, doesn't have the MAC address
associated with that IP address, it needs to ask the entire network who has
this IP. Well, that's where this thing called Address Resolution Protocol, ARP,
comes in. ARP protocol is the way MAC addresses and IP addresses are associated
and essentially glued together in a LAN. The router sends what's called an "ARP
request," and it sends it to the LAN's broadcast address, that FF:FF:FF,
basically all ones, that has been reserved for this purpose. So it basically
says, hey, who out here on the LAN has this IP? And because it's broadcast,
every machine on the LAN will receive that query, will hear it. The one machine
that is assigned to that IP will respond to that. And since the broadcast was
sent to everybody, but it was sent from a specific MAC address, that is, from
the router, the ARP reply is just sent right back to the router. The card who
does have that IP sends back, hey, I've got your IP.

## Promiscuous Mode

Now, remember I mentioned that a NIC will respond to something addressed to its
own MAC address or to the broadcast address. That's almost always true.
However, NICs can also be put into something called "promiscuous mode." Now,
all that means is you just switch the adapter into promiscuous mode, and that
says just receive everything. And so that's what these sniffers do. Any
sniffing tool simply puts the NIC into promiscuous mode, and everything on the
wire comes in and gets logged and decoded and checked out.
