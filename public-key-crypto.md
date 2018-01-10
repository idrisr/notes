# key pair crypto

## authentication
* where the public key verifies a holder of the paired private key sent the message

## encryption
* where only the paired private key holder can decrypt the message encrypted with the public key.

## certificates
from [here](https://technet.microsoft.com/en-us/library/bb123848(v=exchg.65).aspx)

* Although public key cryptography simplifies key management by allowing one key
pair to be used by many people, there is a problem: how to distribute a public
key so that the user can find it and know that it is valid.

* A digital certificate is a digital form of identification, much like a passport or driver's license

* A digital certificate is a digital credential that provides information about
the identity of an entity as well as other supporting information.
* A digital certificate is issued by an authority, referred to as a certification authority
(CA).
* Because a digital certificate is issued by a certification authority, that
authority guarantees the validity of the information in the certificate.
* Also, a
digital certificate is valid for only a specific period of time.

## `p12` file
In cryptography, PKCS #12 defines an archive file format for storing many
cryptography objects as a single file. It is commonly used to bundle a private
key with its X.509 certificate or to bundle all the members of a chain of
trust.

A PKCS #12 file may be encrypted and signed. The internal storage containers,
called "SafeBags", may also be encrypted and signed. A few SafeBags are
predefined to store certificates, private keys and CRLs. Another SafeBag is
provided to store any other data at individual implementer's choice.

PKCS #12 is one of the family of standards called Public-Key Cryptography
Standards (PKCS) published by RSA Laboratories.

The filename extension for PKCS #12 files is `.p12` or `.pfx`.

These files can be created, parsed and read out with the OpenSSL pkcs12 command.
