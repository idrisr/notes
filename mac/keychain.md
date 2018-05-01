# Keychain

mostly from [here](https://developer.apple.com/documentation/security/keychain_services/keychain_items)

In macOS, keychain files are stored in `~/Library/Keychains/`,
`/Library/Keychains/`, and `/Network/Library/Keychains/`, and the Keychain
Access GUI application is located in the Utilities folder in the `Applications`
folder. It is free, open source software released under the terms of the
APSL. The command line equivalent of Keychain Access is `/usr/bin/security`.

## ios

* need this key in `info.plist` - `keychain-access-groups`

## keys

### General Item Attribute Keys

### Password Attribute Keys

### Certificate Attribute Keys

### Cryptographic Attribute Keys

### Cryptographic Key Usage Attribute Keys

### Protocol Values

### Authentication Type Values

### Key Class Values

### Key Type Values

### Synchronizability Values

### Token ID Values

### Accessibility Values

### Pseudorandom Function Values

### Access Group Values

```
kSecAttrAccessGroup
kSecAttrAccount
kSecAttrService
kSecClass
kSecClassGenericPassword
kSecMatchLimit
kSecMatchLimitAll
kSecMatchLimitOne
kSecReturnAttributes
kSecReturnData
kSecValueData
```
