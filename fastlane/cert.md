# `fastlane cert`

```bash
fastlane cert
```

This will check if any of the available signing certificates is installed on
your local machine.

Only if a new certificate needs to be created, cert will

* Create a new private key
* Create a new signing request
* Generate, downloads and installs the certificate
* Import all the generated files into your Keychain

`cert` will never revoke your existing certificates. If you can't create any
more certificates, `cert` will raise an exception, which means, you have to
revoke one of the existing certificates to make room for a new one.
