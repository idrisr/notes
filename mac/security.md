# `security`


## dump profile info
```bash
# dumping stuff from a provisioning profile

# cms - Encode or decode CMS encrypted message
# -D - decode a CMS message
# -i - use infile as source of data (default: stdin)
security cms -D -i my_profile.mobileprovision
```

## list keychains
```bash
security list-keychains
```

## list locally installed code signing identities
```bash
security find-identity -v -p codesigning
```

## WWDR certs
[readme](https://stackoverflow.com/questions/32821189/xcode-7-error-missing-ios-distribution-signing-identity-for/35401483#35401483)