# VPN

* todo - read [this](https://www.grc.com/vpn/vpn.htm)
* from [here](https://www.grc.com/sn/sn-014.txt)

takes the entire TCP packet, makes the entire packet the payload of another packet.

STEVE:  ...and not get into all the detailed specifics.  We're going to do that
next week because it's a big topic.  I don't want to try to cram too much in and
miss stuff.  So the theory of VPN, Virtual Private Network, the key concept is
what's called a "tunnel."  With a tunnel, you establish a connection between
endpoints.  And we've talked about how packets are used to move data over the
Internet.  One of our future podcasts, we're actually going to talk about how
the Internet works and get into that in more detail.  But for now, it's
sufficient to know that data travels in packets.  The packets have, like, an
address information on the front, the so-called header of the packet, where it's
the source IP, the destination IP, the source port, the destination port, and
some other stuff.  That is normally visible to anyone who's sniffing the
traffic.  And it gives the IP of your machine, where it originated, and the IP
of where it's heading.  And also, from looking in the packet - normal Internet
packets are not encrypted in any way.  They're just so-called plaintext, as the
crypto term is.  So anybody, again, sniffing the traffic can see what it is
that's going on and understand what the traffic is.

Now, what the VPN does, which is unique and special, is it essentially
encapsulates the packet.  Every packet coming from your computer is
encapsulated.  It's wrapped in another packet where your entire packet is the
payload, the data of this VPN packet.  So the IP addresses, like where your data
is going to, ends up being in the data of this so-called VPN tunnel packet.

## Tunneling
So anyway, the idea is that this VPN tunneling
establishes a secure channel.  Now, somebody sniffing the traffic is just out
of luck.  They could know by looking at the IP address or port number that it's
a VPN channel because VPN channels tend to use specific ports.  But they won't
even know where you're going...

## IPSec

IPSec is an IP standard for endpoint-to-endpoint security that
establishes extremely strong, you know, virtually uncrackable encryption.  So
every single packet is scrambled when it's put into this VPN packet.
