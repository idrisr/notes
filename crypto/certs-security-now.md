# Notes from Steve Gibson on Certificates

There is an implied
trust at some level within the certificate structure.  That is, you know, for
example, VeriSign is generally the company I get mine from, although I used
GoDaddy this summer when I was messing around with a wildcard certificate
because they were so much less expensive.  

But the point is none of them are
free because, in return for getting the certificate, you have to go through some
procedure to prove you are who you say you are.  They are supposed to, in turn,
verify that information, make sure that this is coming from Gibson Research
Corporation.  I mean, they check our Dun & Bradstreet number, they place phone
calls to phone numbers that are known to be associated with Gibson Research that
come from sources other than us saying, oh, here, call this number.  So they
independently verify as much information as they can, really as a function of
how secure you want this to be.  So they want to get paid in return for doing
all that.  And that's sort of the ecosystem that we have for certificates.

* certificate authorities

* certificate essentially binds together an identity of someone or something
with a public key
  * for example, a web server certificate, it's binding the domain name to the public key.

* And the certificate contains GRC's public key.  So what the certificate is asserting is that these two things go together, the identity information and the public key.

* Well, that assertion is being made by a third party, as we were talking at the top of this episode, a third party who has taken responsibility and has put their reputation behind that assertion.  

* And certificates are just files, they're just data files like anything else.  You know, a few K in size.  The certificate signing request is something that an individual who wants to create a certificate generates on their computer.  And that process involves creating a public key pair.  And we've talked in years past in detail about public keys.  So I'll just quickly remind our listeners how they work.

* So somebody who wants to generate a certificate first creates a
public key pair.  They then fill out essentially the fields in the standard
form.  There's a format for all this called an X.509 certificate.  X.509 is
sort of the worldwide accepted standard of format for public key certificates.
So you fill out this information.  Then, using your private key, you sign that
information.

* we sign the CSR, which proves we have the private key that's part of the CSR. then they need to prove we are who we say we are, which Apple has already done when you sign for the developer program.
