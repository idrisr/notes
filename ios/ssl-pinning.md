# SSL Pinning

* from [here](https://infinum.co/the-capsized-eight/how-to-make-your-ios-apps-more-secure-with-ssl-pinning)

* `SecTrustGetCertificateAtIndex`

* `SecPolicyCreateSSL`

# intuition

1. set ssl policies for domain name check
1. evaluate the server's certificate
1. get local and remote certificate data
1. compare that they're the same

## relevant methods
### `SecCertificateCopyData`
* Returns a DER representation of a certificate given a certificate object.
* [DER Encoding](https://developer.apple.com/documentation/security/certificate_key_and_trust_services/certificates/storing_a_der_encoded_x.509_certificate)

### `SecPolicyCreateSSL`
* Returns a policy object for evaluating SSL certificate chains.

### `SecTrustEvaluate`
* Evaluates trust for the specified certificate and policies.

### `SecTrustGetCertificateAtIndex`
* Returns a specific certificate from the certificate chain used to evaluate trust.

### `SecTrustResultType`
* The trust evaluation result.

### `SecTrustSetPolicies`
* Sets the policies to use in an evaluation.

### `SecCertificate`
An abstract Core Foundation-type object representing an X.509 certificate.

### `SecIdentity`
* An abstract Core Foundation-type object representing an identity.
* A SecIdentity object contains a SecKey object and an associated SecCertificate object.
