# `security`


## profile stuff
```bash
# dumping stuff from a provisioning profile

# cms - Encode or decode CMS encrypted message
# -D - decode a CMS message
# -i - use infile as source of data (default: stdin)
security cms -D -i ffd27219-7823-4053-b8f7-62136cd53941.mobileprovision
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