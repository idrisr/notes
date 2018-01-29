# ssh


## stop asking for passphrase
`ssh-add` -- adds private key identities to the authentication agent

`ssh-add ~/.ssh/id_rsa`

# pem file
basically it's a file format and it just holds your private key

PEM or Privacy Enhanced Mail is a Base64 encoded DER certificate.  PEM
certificates are frequently used for web servers as they can easily be
translated into readable data using a simple text editor.  Generally when a PEM
encoded file is opened in a text editor, it contains very distinct headers and
footers.  Below are some examples of different files in PEM format.

# generate md5 fingerprint
```bash
# -E hash algo
# -l fingerprint
# -f which file
ssh-keygen -l -E md5 -f id_rsa.pub
```
