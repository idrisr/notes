# Code Signing

from [here](https://developer.apple.com/library/content/documentation/Security/Conceptual/CodeSigningGuide/AboutCS/AboutCS.html)
## the signature

### A seal.
This is a collection of checksums or hashes of the various parts of the code, created by the code signing software. The seal can be used at verification time to detect alterations.

The code signing machinery generates the seal by running different parts of your
final bundle (app, library, or framework), including executables, resources, the
Info.plist file, code requirements, and so on, through a one-way hashing
algorithm. This produces a series of digests, or checksums, which are short
strings of digits that are unique to a particular input block, but which cannot
be used to reconstruct the original input.

A verifying entity that has both the code under evaluation, and the
corresponding collection of hashes, runs the same hashing algorithm on the code
in exactly the same way as the signer, and compares the results to the original,
stored hashes to see if anything has changed. Even a small modification in the
code results in a different digest, which indicates tampering or corruption.
However, this verification is only as reliable as the reliability of the stored
hash. The digital signature guarantees this.

### A digital signature.
The code signing software encrypts the seal using the signer’s identity to create a digital signature. This guarantees the seal’s integrity.

As explained in Security Overview, a digital signature uses public key
cryptography to ensure data integrity. Like a signature written with ink on
paper, a digital signature can be used to identify and authenticate the signer.
However, a digital signature is more difficult to forge, and goes one step
further: it can ensure that the signed data has not been altered. This is
somewhat like designing a paper check or money order in such a way that if
someone alters the written amount of money, a watermark with the text “Invalid”
becomes visible on the paper

In the context of code signing, the signing software creates the digital
signature by encrypting the seal’s hashes with the signer’s private key. Because
only the signer possesses the private key, only the signer is able to perform
this encryption. It is this collection of encrypted hashes that the signer
stores in the app (or framework, archive, or other signed object), along with
the matching certificate, which collectively represent the digital signature.

To verify the signature, the verifying software computes the same set of hashes
across the various blocks of code and data. It then uses the signer’s public
key, which is embedded in the certificate, to decrypt the encrypted hashes that
came with the code, thus obtaining the original hash as computed by the signer.
If the two hashes match, the data has not been modified since it was signed by
someone in possession of the signer’s private key.

Although not strictly required for code signing to work, the certificate itself
is usually signed by a trusted certificate authority. If not, the verifier can
be sure of the certificate’s stability from one release to another, but not of
its origin. If it is, the certificate authority, often Apple, vouches for the
identity of the signer.


### Code requirements.
These are the rules governing verification of the code signature. Some are inherent to the verifier (depending on its goals). Others are specified by the signer and sealed with the rest of the code.

# Code Signing Identity

from [here](https://developer.apple.com/library/content/documentation/Security/Conceptual/CodeSigningGuide/Procedures/Procedures.html)

* `code signing identity` = `private key` + `plus a digital certificate`

You sign code using a code signing identity, which consists of a private key
plus a digital certificate. The private key is an encryption key that only you
have, making it impossible for anyone to forge your signature, as long as you
keep the key secure. The digital certificate has a usage extension that enables
it to be used for signing, and it contains the public key that complements your
private key. The certificate is not secret, and is itself generally signed by a
certificate authority, which effectively vouches for your identity. The simple
act of code signing does not require a certificate authority’s signature on your
certificate, but your signature is much more useful this way because anyone
encountering your signature can be confident of its origin.

## resign .ipa with new distribution certificate
* [here](https://coderwall.com/p/cea3fw/resign-ipa-with-new-distribution-certificate)
