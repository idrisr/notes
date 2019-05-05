# email

todo read me http://www.thegeekstuff.com/2013/05/how-email-works

# protocols

## STMP
also known as Mail Transfer Agent ("MTA")

## IMAP
Internet Mail Access Protocol

## POP
Post Office Protocol
* stores the messages for a particular user in a text file.

POP Commands

* USER  – For User-ID
* PASS   – For Password
* LIST   – Provide message list
* DELE – To delete a message
* QUIT  – To end the interaction

## MX Record
Main Exchanger record, a DNS resource

## email spoofing
anyone can send an email to a SMTP server and pretend that it came from a different domain

## dns text record

## open relay server
an smtp server that will forward any email packets along to their destination.
These are very rare now due to spammers taking advantage of this

## DMARC
protocol that allows SMTP servers to sign their emails, and then the recipients can use DNS to get the public key and verify the signature

## SPF
protocol that lets the recipient email server check that the IP source of the
email does match the DNS record for the domain
