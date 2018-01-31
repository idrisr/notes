# DNS

## text records

## level 3

## IP spoofing
cant be done, otherwise packets wont arrive

##

## dns hostnames

## cname
from [here](https://www.grc.com/sn/sn-580.htm)

* basically it's a DNS record which will the point somewhere else
* There's a record in DNS called a CNAME, stands for "canonical name."
* And what it essentially is, is an alias for a different name.
* I'm using that at GRC. I have a couple CNAME records.
* My blogs are steve.grc.com CNAME records to agilesynapse.wordpress.com

```bash
> host -a idrisr.com
Trying "idrisr.com"
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4944
;; flags: qr rd ra; QUERY: 1, ANSWER: 7, AUTHORITY: 5, ADDITIONAL: 6

;; QUESTION SECTION:
;idrisr.com.			IN	ANY

;; ANSWER SECTION:
## the CNAME
idrisr.com.		42	IN	CNAME	limitless-bastion-8632.herokuapp.com.
idrisr.com.		1782	IN	NS	dns1.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns4.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns3.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns5.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns2.registrar-servers.com.
idrisr.com.		3583	IN	SOA	dns1.registrar-servers.com. hostmaster.registrar-servers.com. 2015110502 43200 3600 604800 3601

;; AUTHORITY SECTION:
idrisr.com.		1782	IN	NS	dns2.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns1.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns5.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns4.registrar-servers.com.
idrisr.com.		1782	IN	NS	dns3.registrar-servers.com.

;; ADDITIONAL SECTION:
dns1.registrar-servers.com. 204	IN	A	216.87.155.33
dns1.registrar-servers.com. 204	IN	AAAA	2620:74:19::33
dns2.registrar-servers.com. 85502 IN	A	216.87.152.33
dns3.registrar-servers.com. 6808 IN	A	216.87.155.33
dns4.registrar-servers.com. 6870 IN	A	216.87.152.33
dns5.registrar-servers.com. 5798 IN	A	216.87.155.33

Received 413 bytes from 204.62.151.87#53 in 15 ms
```
