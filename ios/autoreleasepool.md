# AutoRelease

http://en.swifter.tips/autoreleasepool/

* tl;dr when you want to release the reference to memory, but not just yet. you
want the caller to be able to use the object, and then you can release it.

* and this can be before the memory would go out of scope because that could be waiting too long

```swift
// for example
autoreleasepool {
  let plainConfig = Realm.Configuration(fileURL: TodoRealm.plain.url)
  let realm = try! Realm(configuration: plainConfig)
  try! realm.writeCopy(toFile: TodoRealm.encrypted.url, encryptionKey: password.sha512)

```

Note: You wrap the code in an `autoreleasepool` block to make sure that all
objects and references to your Realm are released once you’re finished copying
the Realm file.
