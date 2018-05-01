# Keychain

* from [here](https://useyourloaf.com/blog/simple-iphone-keychain-access/)
* mostly from [here](https://developer.apple.com/documentation/security/keychain_services/keychain_items)
* and [here](https://useyourloaf.com/blog/keychain-duplicate-item-when-adding-password/)
* and [here](https://useyourloaf.com/blog/keychain-group-access/)


## Keychain Item


In macOS, keychain files are stored in `~/Library/Keychains/`,
`/Library/Keychains/`, and `/Network/Library/Keychains/`, and the Keychain
Access GUI application is located in the Utilities folder in the `Applications`
folder. It is free, open source software released under the terms of the
APSL. The command line equivalent of Keychain Access is `/usr/bin/security`.

## keychain sharing
* when you need to share your keychain items across different apps.
* turn it on in entitlements

## main keychain strings
### `kSecAttrAccessGroup`
* needed if you want to share across apps, and hook it up via entitlements

### `kSecAttrAccount`
* The corresponding value is of type `CFString` and contains an account name.
Items of class `kSecClassGenericPassword` and `kSecClassInternetPassword` have
this attribute.

### `kSecAttrService`
* The corresponding value is a string of type `CFString` that represents the
service associated with this item. Items of class `kSecClassGenericPassword`
have this attribute.

### `kSecAttrServer`
* The corresponding value is of type `CFString` and contains the server's domain
name or IP address. Items of class `kSecClassInternetPassword` have this
attribute.

### `kSecAttrGeneric`
* A key whose value indicates the item's user-defined attributes.
* The corresponding value is of type `CFData` and contains a user-defined
attribute. Items of class `kSecClassGenericPassword` have this attribute.

### `kSecValueData`
* The corresponding value is of type `CFData`.  For keys and password items, the
data is secret (encrypted) and may require the user to enter a password for
access.

### `kSecReturnData`
* The corresponding value is of type `CFBoolean`. A value of `kCFBooleanTrue`
indicates that the data of an item should be returned in the form of a `CFData`
object.

### `kSecClass`
* A dictionary key whose value is the item's class.
* see the documentation for the list of values

### `kSecClassGenericPassword`
* The value that indicates a generic password item.

### `kSecMatchLimit`

### `kSecMatchLimitAll`

### `kSecMatchLimitOne`

### `kSecReturnAttributes`
* The corresponding value is of type `CFBoolean`. A value of `kCFBooleanTrue`
indicates that a dictionary of the (unencrypted) attributes of an item should be
returned in the form of a `CFDictionary` using the keys and values defined in Item
Attribute Keys and Values.

## main keychain methods
### `SecItemAdd`
```swift
func SecItemAdd(_ attributes: CFDictionary, _ result: UnsafeMutablePointer<CFTypeRef?>?) -> OSStatus
```

### `SecItemDelete`
* Deletes items that match a search query.
```swift
func SecItemDelete(_ query: CFDictionary) -> OSStatus
```

### `SecItemUpdate`
* Modifies items that match a search query.
```swift
// search dictionary - query: CFDictionary
// update dictionary - attributesToUpdate: CFDictionary
func SecItemUpdate(_ query: CFDictionary, _ attributesToUpdate: CFDictionary) -> OSStatus
```


### `SecItemCopyMatching`
* Returns one or more keychain items that match a search query, or copies attributes of specific keychain items.
```swift
func SecItemCopyMatching(_ query: CFDictionary, _ result: UnsafeMutablePointer<CFTypeRef?>?) -> OSStatus
```


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
