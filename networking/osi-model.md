# OSI-model

## Application
* deals directly with software applications
* HTTP, FTP, SMTP, ...

### SNMP
* for monitoring and managing networks

## Presentation
* not widely used
* make sure format is good
* encryption

## Session
* manages dialogues
* generally only for RPCs (remote procedure calls)
* really not used

## Transport
* for reliable end to end data transfer
* data is segmented
* reassembled at destination
* UDP or TCP
* sequence numbers


## Network
* standards and procedures on a network
* sends packets
* not always directly connected
* Internet Protocol most commonly used
* routes packets through routers
* MAC addresses
* ICMP for error handling and diagnostics
* IPsec
* packet routing
* QOS
* access control

## Data Link
* node to node transfer through a link
* ethernet software on switches
* called a frame
* avoids data collision

## Physical
* through various physical media
* hardware, physics, frequencies, cables, wireless