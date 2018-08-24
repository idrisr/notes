# `openssl`

```bash
# show server certs
openssl s_client -connect myhost.com:443 -showcerts
```

```bash
# check DER encoding
openssl x509 -text -noout -inform DER -in my_cert.some_cert_extension
```

```bash
# convert crt to DER file
openssl x509 -outform der -in my_cert.crt -out my_cert.der
```
